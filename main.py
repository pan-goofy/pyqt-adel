import sys
import configparser
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5.QtCore import QCoreApplication
from adel import Adel
from index import Ui_Form

class LoginGui(QWidget, Ui_Form):
    cf = configparser.ConfigParser()
    cf.read('./config.ini', encoding='utf-8')
    cf_ip = cf.get("Sections","ip")
    cf_port = cf.get("Sections","port")
    def __init__(self):     
        super(LoginGui, self).__init__()   # 调用父类的初始化方法
        self.setupUi(self)                 #  调用Ui_MainWindow的setupUi方法布置界面
        _translate = QCoreApplication.translate
        self.ip.setText(_translate("Form", self.cf_ip))
        self.port.setText(_translate("Form", self.cf_port))
        #信道
        self.init.clicked.connect(self.initCard)
        self.readIcCard.clicked.connect(self.readCard)
        self.writeIcCard.clicked.connect(self.writeCard)
        self.emptyIcCard.clicked.connect(self.emptyCard)
        
        self.adel = Adel()
    def initCard(self):
        result = self.adel.initCard()
        self.textLog.append(str(result))
        print(result)
    def readCard(self):
        result = self.adel.readCard()
        self.textLog.append(str(result))
        print('read')
    def writeCard(self):
        print('write')      
    def emptyCard(self):
        print('empty')              

if __name__ == '__main__':
    app = QApplication([])
     # 创建共享内存
    gui = LoginGui()
    gui.show()
    app.exec_()
