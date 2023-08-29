import ctypes
import datetime
from msg import getMsg


class Adel():
    clib = ctypes.CDLL("./MainDll.dll")
    cardId = 0
    cardno = 0
    def __init__(self):
        print('init')
        self.initCard()
        #self.readCard()
        #self.readCardId()
        #self.emptyCrad()
        #self.writeCard()
        

    def initCard(self): 
        self.clib.Init.argtypes = [ctypes.c_int, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int, ctypes.c_int, ctypes.c_int]
        server = b"MENSUO"  # 字符串需要转换为字节串
        username = b"Interface"
        result= self.clib.Init(30,server,username,0,0,5)
        return {"status":result,"msg":getMsg().get(result)}
        
    def readCard(self):
        # 定义参数类型
        self.clib.ReadCard.argtypes = [
        ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p,
    ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p,
    ctypes.POINTER(ctypes.c_long), ctypes.POINTER(ctypes.c_int),
    ctypes.POINTER(ctypes.c_int), ctypes.POINTER(ctypes.c_int)]
        self.clib.ReadCard.restype = int  # 返回类型为None
        # 定义输入参数
        room = ctypes.create_string_buffer(1000)
        gate = ctypes.create_string_buffer(1000)
        stime = ctypes.create_string_buffer(240)
        guestname = ctypes.create_string_buffer(1000)
        guestid = ctypes.create_string_buffer(1000)
        track1 = ctypes.create_string_buffer(1000)
        track2 = ctypes.create_string_buffer(1000)
        lift = ctypes.create_string_buffer(1000)
        cardno = ctypes.c_long()
        st = ctypes.c_int()
        openflag = ctypes.c_int()
        reakfast = ctypes.c_int()
        breakfast = ctypes.c_int()


# 调用函数
        result = self.clib.ReadCard(room, gate, stime, guestname, guestid, track1, track2,
                   lift, ctypes.byref(cardno), ctypes.byref(st),
                   ctypes.byref(openflag), ctypes.byref(breakfast))
        print("resultL",result)
        print("room",room.value.decode())
        print("stime",stime.value.decode())

        stimes = stime.value.decode()
        data = {}
        if stimes:
            data["startDate"] = stimes[:12]
            data["endDate"] = stimes[12:]
        
        if result == 0:
            self.cardno = cardno.value
            data["cardno"] = cardno.value
            data["room"]  = room.value.decode()
            data["guestName"] = guestname.value.decode()
            data["guestId"] = guestid.value.decode()
            data["lift"] = lift.value.decode()

        print("read_data",data)
        return {"status":result,"msg":getMsg().get(result),"data":data}


    def readCardId(self):
        cardId = ctypes.c_long()
        result = self.clib.ReadId(ctypes.byref(cardId))
        print(result)
        self.cardId = cardId.value
        data = {}
        if result == 0:
            data['cardId'] =  cardId.value
        return {"status":result,"msg":getMsg().get(result),"data":data}


    def emptyCrad(self,msg):
        #self.readCard()
        self.cardno = msg.get('cardNo')
        if self.cardno:
           cardno = ctypes.c_long(int(self.cardno))
           fpindex = ctypes.c_int()
           track1 = ctypes.create_string_buffer(100)
           track2 = ctypes.create_string_buffer(100)
           result = self.clib.EraseCard(cardno,track1,track2,ctypes.byref(fpindex))
           return {"status":result,"msg":getMsg().get(result)}
        return {"status":1,"msg":"没有卡号"}

    def writeCard(self,data):
        # 定义参数类型
        self.clib.NewKey.argtypes = [
    ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p,
    ctypes.c_int, ctypes.c_int, ctypes.POINTER(ctypes.c_long), ctypes.c_int,
    ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int
        ]

        # 定义返回类型
        self.clib.NewKey.restype = ctypes.c_int
        # 创建参数
        room = data.get('room').encode()
        gate = b"0102"
        current_time = datetime.datetime.now()
        start = current_time.strftime("%Y%m%d%H%M")
        print(start)
        print(data.get("endDate"))
        if data.get("startDate"):
            start = data.get("startDate")
        stime =  (start+data.get("endDate")).encode()
        guestname = data.get('guestName').encode()
        guestid = data.get('guestId').encode()
        overflag = int(data.get('overflag'))
        openflag = 0
        cardno = ctypes.c_long()
        breakfast = 1
        track1 = b""
        track2 = b""
        lift = data.get('lift').encode()
        fingerflag = 0


        result = self.clib.NewKey(room, gate, stime, guestname, guestid,
    overflag, openflag, ctypes.byref(cardno), breakfast,
    track1, track2, lift, fingerflag)
        
        return {"status":result,"msg":getMsg().get(result)}

if __name__ == "__main__": 
    adel = Adel()