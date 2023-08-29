import sys
import configparser
import json
import asyncio
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5.QtCore import QCoreApplication,pyqtSlot
from adel import Adel
from index import Ui_Form
from web_socket import SocketThread
import datetime
import logging
import traceback
class LoginGui(QWidget, Ui_Form):
    cf = configparser.ConfigParser()
    cf.read('./config.ini', encoding='utf-8')
    cf_ip = cf.get("Sections","ip")
    cf_port = cf.get("Sections","port")
    overflag = 0
    web_socket = ""
    def __init__(self):     
        super(LoginGui, self).__init__()   # 调用父类的初始化方法
        self.setupUi(self)                 #  调用Ui_MainWindow的setupUi方法布置界面
        self.startServer()
        _translate = QCoreApplication.translate
        self.ip.setText(_translate("Form", self.cf_ip))
        self.port.setText(_translate("Form", self.cf_port))
        #信道
        self.init.clicked.connect(self.initCard)
        self.readIcCard.clicked.connect(self.readCard)
        self.writeIcCard.clicked.connect(self.writeCard)
        self.emptyIcCard.clicked.connect(self.emptyCard)
        self.checkBox.stateChanged.connect(self.on_checkbox_changed)
        self.adel = Adel()

    def on_checkbox_changed(self):
        self.overflag = 0 if self.overflag !=0 else 1

    def startServer(self):
        #self.startService.setDisabled(True)
        try:
            self.socket_thread = SocketThread(self.cf_ip,self.cf_port)
            #socket.run()
            self.socket_thread.finished.connect(self.on_thread_finished)
            self.socket_thread.start()
        except Exception as e:
            print("socket error",e)    
    @pyqtSlot(str,object)
    def on_thread_finished(self,message,websocket):
        print("socket",message)
        
        self.websocket = websocket
        try:
           print("message",message)
           msg = json.loads(message)
           self.setDevice(msg)    
        except Exception as e:
           self.textLog.append(str(e))
    def setDevice(self,msg):
        action = msg.get("action")
        result = ""
        data = {}
        if action == "initCard":
            result = self.adel.initCard()
        elif action == "readCard":   
            print("read_data2")       
            result = self.adel.readCard()  
        elif action == "writeCard":       
            result = self.adel.writeCard(msg)    
        elif action == "clearCard":       
            result = self.adel.emptyCrad(msg)
        elif action == "getCardId":       
            result = self.adel.readCardId()    
        self.textLog.append(str(result))

        if result !="":    
            data=({
                "status":result.get('status'),
                "data" : result.get('data'),
                "type" : action
            })
            asyncio.run(self.socket_thread.sendMsg(json.dumps(data),self.websocket))    
     

    def initCard(self):
        result = self.adel.initCard()
        self.textLog.append(str(result))
        print(result)
    def readCard(self):
        result = self.adel.readCard()
        print('read')
        self.textLog.append(str(result))
    def writeCard(self):
        data ={}
        data['room'] = self.room.text()
        data['cardNo'] = self.cardNo.text()
        data['endDate'] = self.endTime.text()
        data['overflag'] = self.overflag
        data['lift']  = self.lift.text()
        data['guestName'] = self.guestName.text()
        data['guestId'] = self.guestId.text()
        result = self.adel.writeCard(data)
        self.textLog.append(str(result))              

    def emptyCard(self):
        msg = {"cardNo":self.cardNo.text()}
        result = self.adel.emptyCrad(msg)
        self.textLog.append(str(result))              

if __name__ == '__main__':
    filelog = datetime.date.today()
    logging.basicConfig(filename=f'{filelog}.txt', level=logging.DEBUG, filemode='a', format='【%(asctime)s】 【%(levelname)s】 >>>  %(message)s', datefmt = '%Y-%m-%d %H:%M')

    try:
        app = QApplication(sys.argv)
          # 创建共享内存
        gui = LoginGui()
        gui.show()
        app.exit(app.exec())
    except Exception as e:
         logging.error("主程序抛错：")
         logging.error(e)
         logging.error("\n" + traceback.format_exc())
 
