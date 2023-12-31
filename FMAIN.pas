unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin;


CONST
    LOCK3200=1;
    LOCK3200K=2;
    LOCK4200=3;
    LOCK4200D=4;
    LOCK5200=5;
    LOCK6200=6;
    LOCK7200=7;
    LOCK7200D=8;
    LOCK9200=9;
    LOCK9200T=10;

    Adel3200=11;
    Adel4200=12;
    Adel4200D=13;
    Adel5200=14;
    Adel6200=15;
    Adel7200=16;
    Adel7200D=17;
    Adel9200=18;

    Lock611=19;
    Lock612D=20;

    A92=22;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Edit10: TEdit;
    Label14: TLabel;
    Edit11: TEdit;
    CheckBox2: TCheckBox;
    Panel4: TPanel;
    Label15: TLabel;
    Edit12: TEdit;
    Label16: TLabel;
    Edit13: TEdit;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    Edit14: TEdit;
    Button1: TButton;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    Edit15: TEdit;
    Label4: TLabel;
    Edit100: TEdit;
    Button14: TButton;
    CheckBox1: TCheckBox;
    Edit16: TEdit;
    Label25: TLabel;
    Szcq: TSpinEdit;
    Label17: TLabel;
    SpinEdit1: TSpinEdit;
    Edit17: TEdit;
    Label18: TLabel;
    Edit18: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Edit19: TEdit;
    CheckBox3: TCheckBox;
    Panel5: TPanel;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    ComboBox1: TComboBox;
    Label23: TLabel;
    ComboBox3: TComboBox;
    Label24: TLabel;
    ComboBox4: TComboBox;
    Label26: TLabel;
    ComboBox5: TComboBox;
    Label27: TLabel;
    Label28: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit23: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    software,sound:integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

    FUNCTION Init(SOFT:INTEGER;SERVER,UNAME:PCHAR;PORT,ENCODERTYPE,TMENCODER:INTEGER):INTEGER; stdcall external 'MainDll.Dll';
    function EndSession:integer;stdcall external 'MainDll.Dll';

    FUNCTION NewKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:PCHAR;OVERFLAG,OPENFLAG:INTEGER;CARDNO:PINTEGER;breakfast:INTEGER;str1,str2,lift:pchar;fingerflag:boolean):INTEGER;STDCALL external 'MainDll.Dll';
    FUNCTION DupKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:PCHAR;OVERFLAG,OPENFLAG:INTEGER;CARDNO:PINTEGER;breakfast:INTEGER;str1,str2,lift:pchar;fingerflag:boolean):INTEGER;STDCALL external 'MainDll.Dll';
    FUNCTION AddKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:PCHAR;OVERFLAG,OPENFLAG:INTEGER;CARDNO:PINTEGER;breakfast:INTEGER;str1,str2,lift:pchar;fingerflag:boolean):INTEGER;STDCALL external 'MainDll.Dll';
    function ReadCard(ROOMNO,GATE,STIME,GUESTNAME,GUESTID,track1,track2,lift:pchar;CARDNO,st,openflag,breakfast:pinteger):integer;STDCALL external 'MainDll.Dll';
    function EraseCard(cardno:integer;track1,track2:pchar; var fpindex: integer ):integer;STDCALL external 'MainDll.Dll';
    procedure ChangeUser(UNAME:PCHAR); STDCALL external 'MainDll.Dll';

    function ReadCardData(cardtype,start,len:integer;buff:pchar):integer;stdcall external 'MainDll.Dll';
    function WriteCardData(cardtype,start,len:integer;outbuff:pchar):integer;stdcall external 'MainDll.Dll';
    FUNCTION ReadId(CardId:PDWORD):INTEGER;STDCALL external 'MainDll.Dll';



implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
   i:integer;
begin
     edit3.Text:=formatdatetime('yyyymmdd',date())+formatdatetime('hhnn',time())+ formatdatetime('yyyymmdd',date()+1)+'1200';

end;


procedure TForm1.BitBtn1Click(Sender: TObject);
var
   i:integer;
   s:string;
   port: integer ;
begin
     s:=trim(edit1.Text);
     if s='' then
        exit;
     port := ComboBox2.ItemIndex ;

     i := Init(30,pchar(s),'Interface',port,0,5) ;

     showmessage('Result: '+inttostr(i));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  
  close ;

end;


procedure TForm1.BitBtn3Click(Sender: TObject);
VAR
   I,CARDNO,OVERFLAG,OPENFLAG,ZCQ:INTEGER;
   ROOM,STIME,GNAME,GID,GATE,Lift:STRING;
   fingerflag:boolean;
begin
     IF CHECKBOX2.Checked THEN
        OVERFLAG:=1
     ELSE
        OVERFLAG:=0;

     ROOM:=EDIT2.TEXT;
     STIME:=EDIT3.TEXT;
     GNAME:=EDIT10.TEXT;
     GID:=EDIT11.Text;
     GATE:=EDIT18.Text;
     ZCQ:=Szcq.Value;
     fingerflag:=checkbox3.Checked;
     IF LENGTH(STIME)<>24 THEN BEGIN
        EDIT3.SetFocus;
        EXIT;
     END;
     EDIT9.TEXT:='';

     OPENFLAG := strToint(edit14.Text) ; // 开门方式

     if OPENFLAG>3 then exit ;
     if CheckBox1.Checked then begin
       Lift:=Edit16.Text;
     end;

     I:=NewKey(PCHAR(ROOM),PCHAR(GATE),PCHAR(STIME),PCHAR(GNAME),PCHAR(GID),OVERFLAG,OPENFLAG,@CARDNO,ZCQ,NIL,NIL,PCHAR(Lift),fingerflag);

     EDIT9.TEXT:=INTTOSTR(CARDNO);

     SHOWMESSAGE('Result: '+inttostr(i));
end;



procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndSession ;
  release ;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
VAR
   I,CARDNO,OVERFLAG,OPENFLAG,ZCQ:INTEGER;
   ROOM,STIME,GNAME,GID,lift,GATE:STRING;
   fingerflag:boolean;
begin
     IF CHECKBOX2.Checked THEN
        OVERFLAG:=1
     ELSE
        OVERFLAG:=0;

     ROOM:=EDIT2.TEXT;
     STIME:=EDIT3.TEXT;
     GNAME:=EDIT10.TEXT;
     GID:=EDIT11.Text;
     ZCQ:=Szcq.Value;
     GATE:=EDIT18.Text;
     fingerflag:=checkbox3.Checked;
     if CheckBox1.Checked then begin
       lift:=Edit16.Text;
     end;
     IF LENGTH(STIME)<>24 THEN BEGIN
        EDIT3.SetFocus;
        EXIT;
     END;
     EDIT9.TEXT:='';

     OPENFLAG := strToint(edit14.Text) ; // 开门方式
     if OPENFLAG>3 then exit ;


     I:=DupKey(PCHAR(ROOM),PCHAR(GATE),PCHAR(STIME),PCHAR(GNAME),PCHAR(GID),OVERFLAG,OPENFLAG,@CARDNO,ZCQ,NIL,NIL,PCHAR(lift),fingerflag);

     EDIT9.TEXT:=INTTOSTR(CARDNO);

     SHOWMESSAGE('Result: '+inttostr(i));

end;

procedure TForm1.BitBtn7Click(Sender: TObject);
VAR
   I,CARDNO,OVERFLAG,OPENFLAG,breakfast:INTEGER;
   ROOM,STIME,GNAME,GID,lift,GATE:STRING;
   fingerflag:boolean;
begin
     IF CHECKBOX2.Checked THEN
        OVERFLAG:=1
     ELSE
        OVERFLAG:=0;

     ROOM:=EDIT2.TEXT;
     STIME:=EDIT3.TEXT;
     GNAME:=EDIT10.TEXT;
     GID:=EDIT11.Text;
     breakfast:=Szcq.Value;
     GATE:=EDIT18.Text;
     fingerflag:=checkbox3.Checked;
     if CheckBox1.Checked then begin
       lift:=Edit16.Text;
     end;
     IF LENGTH(STIME)<>24 THEN BEGIN
        EDIT3.SetFocus;
        EXIT;
     END;
     EDIT9.TEXT:='';

     OPENFLAG := strToint(edit14.Text) ; // 开门方式
     if OPENFLAG>3 then exit ;

     I:=AddKey(PCHAR(ROOM),PCHAR(GATE),PCHAR(STIME),PCHAR(GNAME),PCHAR(GID),OVERFLAG,OPENFLAG,@CARDNO,breakfast,NIL,NIL,PCHAR(lift),fingerflag);

     EDIT9.TEXT:=INTTOSTR(CARDNO);

     SHOWMESSAGE('Result: '+inttostr(i));


end;

procedure TForm1.BitBtn4Click(Sender: TObject);
VAR
   I:INTEGER;
   ROOM,STIME,GNAME,GID,gate,lift:ARRAY[0..200] OF CHAR;
   CARDNO,ST,openflag,ZCQ:INTEGER;

begin
      edit4.text:='';
      edit5.text:='';
      edit6.text:='';
      edit7.text:='';
      edit8.text:='';
      edit15.text:='';


      I:=READCARD(ROOM,gate,STIME,GNAME,GID,NIL,NIL,lift,@CARDNO,@ST, @openflag,@ZCQ);
      SHOWMESSAGE('Result: '+inttostr(i));
      if i=0 then begin
         EDIT4.TEXT:=TRIM(ROOM);
         EDIT5.TEXT:=TRIM(STIME);
         EDIT6.TEXT:=INTTOSTR(CARDNO);
         EDIT7.TEXT:=TRIM(GNAME);
         EDIT8.TEXT:=inttostr(ST);
         EDIT15.TEXT:=inttostr(openflag);

         Edit13.Text :=TRIM(ROOM);           // 注销用的房号
         Edit12.Text :=INTTOSTR(CARDNO);     // 注销用的卡号

         Edit19.Text :=TRIM(gate);
         SpinEdit1.Value:= zcq;
         Edit17.Text:=trim(lift);
      end;


end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
   I:INTEGER;
   cardno: integer ;
   fpindex: integer ;
begin
{    if  (trim(edit12.Text) = '') or (trim(edit12.Text) = '0')  then begin
        edit12.SetFocus;
        exit;
    end;   }
    cardno := strToint(edit12.Text) ;
    i := EraseCard(cardno,'','',fpindex) ;
    if i = 0 then begin
        edit13.Text := '';
        edit12.Text := '';
    end;
  showmessage(intTostr(i)) ;

end;

procedure TForm1.Button14Click(Sender: TObject);
var
  user: string ;
begin
   user := trim(edit100.Text);
   ChangeUser(pchar(user));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
   s:string;
   i,j,start,len:integer;
   buff:array[0..63] of byte;
begin
     s:='';
     start:=combobox4.ItemIndex or (combobox3.ItemIndex shl 8);
     len:=strtoint(combobox5.Text);
     buff[0]:=combobox1.itemindex;

     for i:=1 to 6 do begin
        try
           buff[i]:=strtoint('$'+copy(edit20.Text,i*2-1,2));
        except
           beep;
           messagebox(handle,'数据错误！','提示信息',16);
           edit20.SetFocus;
           exit;
        end;
     end;
     i:=ReadCardData(18,start,len,@buff[0],);
     if i=0 then
        for j:=0 to len-1 do
           s:=s+inttohex(buff[j],2);
     edit21.Text:=s;
     SHOWMESSAGE('Result: '+inttostr(i));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
   i,start,len:integer;
   buff:array[0..64] of byte;
begin
     start:=combobox4.ItemIndex or (combobox3.ItemIndex shl 8);
     len:=strtoint(combobox5.Text);

     ZeroMemory(@buff[0],64);
     buff[0]:=combobox1.itemindex;

     for i:=1 to 6 do begin
        try
           buff[i]:=strtoint('$'+copy(edit20.Text,i*2-1,2));
        except
           beep;
           messagebox(handle,'数据错误！','提示信息',16);
           edit20.SetFocus;
           exit;
        end;
     end;
     for i:=1 to len do begin
        if copy(edit22.Text,i*2-1,2)='' then
           continue;
        try
           buff[i+6]:=strtoint('$'+copy(edit22.Text,i*2-1,2));
        except
           beep;
           messagebox(handle,'数据错误！','提示信息',16);
           edit22.SetFocus;
           exit;
        end;
     end;
     i:=WriteCardData(18,start,len,@buff);
     SHOWMESSAGE('Result: '+inttostr(i));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   i:integer;
   cardid:dword;
begin
     edit23.Text:='';
     i:=ReadId(@cardid);
     if i=0 then
        edit23.Text:=inttohex(cardid,8);
     showmessage('Result: '+inttostr(i));
end;

end.
