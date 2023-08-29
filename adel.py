import ctypes
from datetime import datetime
from msg import getMsg


class Adel():
    clib = ctypes.CDLL("./MainDll.dll")
    cardId = 0
    cardno = 0
    def __init__(self):
        print('init')
        #self.readCard()
        #self.readCardId()
        #self.emptyCrad()
        self.writeCard()

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
        room = ctypes.create_string_buffer(100)
        gate = ctypes.create_string_buffer(100)
        stime = ctypes.create_string_buffer(24)
        guestname = ctypes.create_string_buffer(100)
        guestid = ctypes.create_string_buffer(100)
        track1 = ctypes.create_string_buffer(100)
        track2 = ctypes.create_string_buffer(100)
        lift = ctypes.create_string_buffer(100)
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
            start_date = datetime.strptime(stimes[:14], "%Y%m%d%H%M%S")
            end_date = datetime.strptime(stimes[14:], "%Y%m%d%H%M%S")

        # 格式化输出
            start_date_str = start_date.strftime("开始%Y-%m-%d %H:%M")
            end_date_str = end_date.strftime("结束%Y-%m-%d %H:%M")
            print(start_date_str,end_date_str)
            data["startDate"] = start_date_str
            data["endDate"] = end_date_str
        
        if result == 0:
            self.cardno = cardno.value
            data["cardno"] = cardno.value
            data["room"]  = room.value.decode()

       

        return {"status":result,"msg":getMsg().get(result),"data":data}


    def readCardId(self):
        cardId = ctypes.c_long()
        result = self.clib.ReadId(ctypes.byref(cardId))
        print(result)
        self.cardId = cardId.value
        print(cardId.value)

    def emptyCrad(self):
        self.readCard()
        cardno = ctypes.c_long(self.cardno)
        fpindex = ctypes.c_int()
        track1 = ctypes.create_string_buffer(100)
        track2 = ctypes.create_string_buffer(100)
        result = self.clib.EraseCard(cardno,track1,track2,ctypes.byref(fpindex))
        print("注销卡",result)

    def writeCard(self):
        # 定义参数类型
        self.clib.NewKey.argtypes = [
    ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p,
    ctypes.c_int, ctypes.c_int, ctypes.POINTER(ctypes.c_long), ctypes.c_int,
    ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int
        ]

        # 定义返回类型
        self.clib.NewKey.restype = ctypes.c_int
        # 创建参数
        room = b"2001"
        gate = b"0102"
        stime = b"202308301200202309051400"
        guestname = b""
        guestid = b""
        overflag = 1
        openflag = 0
        cardno = ctypes.c_long()
        breakfast = 1
        track1 = b""
        track2 = b""
        lift = b"1,2,3,4,5"
        fingerflag = 0


        result = self.clib.NewKey(room, gate, stime, guestname, guestid,
    overflag, openflag, ctypes.byref(cardno), breakfast,
    track1, track2, lift, fingerflag)
        
        print("写卡",result)
        print("cardno",cardno)


if __name__ == "__main__": 
    adel = Adel()