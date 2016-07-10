unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TMainForm = class(TForm)
    Image1: TImage;
    Image2: TImage;
    PopupMenu: TPopupMenu;
    Configure: TMenuItem;
    Exit: TMenuItem;
    skill1: TImage;
    skill2: TImage;
    skill3: TImage;
    skill4: TImage;
    skill5: TImage;
    skill6: TImage;
    skill7: TImage;
    skill8: TImage;
    skill9: TImage;
    skill10: TImage;
    skill11: TImage;
    skill12: TImage;
    Image3: TImage;
    skill13: TImage;
    skill14: TImage;
    skill15: TImage;
    skill16: TImage;
    skill17: TImage;
    skill18: TImage;
    skill19: TImage;
    skill20: TImage;
    skill21: TImage;
    skill22: TImage;
    skill23: TImage;
    skill24: TImage;
    skill25: TImage;
    skill26: TImage;
    skill27: TImage;
    skill28: TImage;
    skill29: TImage;
    skill30: TImage;
    skill31: TImage;
    skill32: TImage;
    skill33: TImage;
    skill34: TImage;
    skill35: TImage;
    skill36: TImage;
    Timer: TTimer;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ok(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ExitClick(Sender: TObject);
    procedure ConfigureClick(Sender: TObject);
    procedure skill1Click(Sender: TObject);
    procedure skill2Click(Sender: TObject);
    procedure skill3Click(Sender: TObject);
    procedure skill4Click(Sender: TObject);
    procedure skill5Click(Sender: TObject);
    procedure skill6Click(Sender: TObject);
    procedure skill7Click(Sender: TObject);
    procedure skill8Click(Sender: TObject);
    procedure skill9Click(Sender: TObject);
    procedure skill10Click(Sender: TObject);
    procedure skill11Click(Sender: TObject);
    procedure skill12Click(Sender: TObject);
    procedure skill13Click(Sender: TObject);
    procedure skill14Click(Sender: TObject);
    procedure skill15Click(Sender: TObject);
    procedure skill16Click(Sender: TObject);
    procedure skill17Click(Sender: TObject);
    procedure skill18Click(Sender: TObject);
    procedure skill19Click(Sender: TObject);
    procedure skill20Click(Sender: TObject);
    procedure skill21Click(Sender: TObject);
    procedure skill22Click(Sender: TObject);
    procedure skill23Click(Sender: TObject);
    procedure skill24Click(Sender: TObject);
    procedure skill25Click(Sender: TObject);
    procedure skill26Click(Sender: TObject);
    procedure skill27Click(Sender: TObject);
    procedure skill28Click(Sender: TObject);
    procedure skill29Click(Sender: TObject);
    procedure skill30Click(Sender: TObject);
    procedure skill31Click(Sender: TObject);
    procedure skill32Click(Sender: TObject);
    procedure skill33Click(Sender: TObject);
    procedure skill34Click(Sender: TObject);
    procedure skill35Click(Sender: TObject);
    procedure skill36Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    procedure WMHOTKEY(var Msg : TMessage); message WM_HOTKEY;
  public
    SpamUchwyt:integer;
    LiczbaPaskow:integer;
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  MD: boolean;
  P: TPoint;


implementation

uses Unit3;

{$R *.dfm}


procedure TMainForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MD := True;
  P :=  Point(X, Y);
end;

procedure TMainForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if MD then
  begin
    Left := Left + (X - P.X);
    Top := Top + (Y - P.Y);
  end;
end;

procedure TMainForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MD := False;
end;

procedure TMainForm.WMHOTKEY(var Msg: TMessage);
begin
  if Msg.WParam = $0001 then MainForm.skill1Click(nil);
  if Msg.WParam = $0002 then MainForm.skill2Click(nil);
  if Msg.WParam = $0003 then MainForm.skill3Click(nil);
  if Msg.WParam = $0004 then MainForm.skill4Click(nil);
  if Msg.WParam = $0005 then MainForm.skill5Click(nil);
  if Msg.WParam = $0006 then MainForm.skill6Click(nil);
  if Msg.WParam = $0007 then MainForm.skill7Click(nil);
  if Msg.WParam = $0008 then MainForm.skill8Click(nil);
  if Msg.WParam = $0009 then MainForm.skill9Click(nil);
  if Msg.WParam = $0010 then MainForm.skill10Click(nil);
end;

procedure WpiszKomende(komenda:string);
var i:integer;
begin
  PostMessage(MainForm.SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
  PostMessage(MainForm.SpamUchwyt,WM_KEYUP,VK_RETURN,0);
  PostMessage(MainForm.SpamUchwyt,WM_KEYDOWN,VK_BACK,0);
  PostMessage(MainForm.SpamUchwyt,WM_KEYUP,VK_BACK,0);
  for i:=1 to length(komenda) do begin
    PostMessage(MainForm.SpamUchwyt,WM_CHAR,ord(komenda[i]),0);
  end; //koniec for i:=1.....
  PostMessage(MainForm.SpamUchwyt,WM_KEYDOWN,VK_RETURN,0);
  PostMessage(MainForm.SpamUchwyt,WM_KEYUP,VK_RETURN,0);
end;

procedure TMainForm.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MD := True;
  P :=  Point(X, Y);
end;

procedure TMainForm.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if MD then
  begin
    Left := Left + (X - P.X);
    Top := Top + (Y - P.Y);
  end;
end;

procedure TMainForm.ok(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MD := False;
end;

procedure TMainForm.ExitClick(Sender: TObject);
var PlikINI:TextFile;
begin
    AssignFile(PlikINI,'config.ini');
    ReWrite(PlikINI);
    Writeln(PlikINI,inttostr(MainForm.Left));
    Writeln(PlikINI,inttostr(MainForm.Top));
    CloseFile(PlikINI);
halt;
end;

procedure TMainForm.ConfigureClick(Sender: TObject);
begin
ConfigForm.Hide;
ConfigForm.Show;
end;

procedure TMainForm.skill1Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill1.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill2Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill2.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill3Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill3.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill4Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill4.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill5Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill5.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill6Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill6.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill7Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill7.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill8Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill8.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill9Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill9.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill10Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill10.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill11Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill11.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill12Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill12.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill13Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill13.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill14Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill14.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill15Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill15.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill16Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill16.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill17Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill17.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill18Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill18.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill19Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill19.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill20Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill20.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill21Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill21.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill22Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill22.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill23Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill23.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill24Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill24.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill25Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill25.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill26Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill26.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill27Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill27.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill28Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill28.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill29Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill29.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill30Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill30.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill31Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill31.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill32Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill32.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill33Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill33.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill34Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill34.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill35Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill35.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.skill36Click(Sender: TObject);
var Komenda: String;
begin
Komenda:=ConfigForm.cmbSkill36.Text+' ';
if Komenda[1]='/' then  WpiszKomende(Komenda) else WpiszKomende('/useskillforce '+Komenda);
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.FormCreate(Sender: TObject);
var PlikINI: TextFile;
    s:string;
begin
MainForm.LiczbaPaskow:=1;
if FileExists('config.ini') then begin
    AssignFile(PlikINI,'config.ini');
    Reset(PlikINI);
    Readln(PlikINI,s);
    MainForm.Left:=strtoint(s);
    Readln(PlikINI,s);
    MainForm.Top:=strtoint(s);
    CloseFile(PlikINI);
end;
  RegisterHotKey(MainForm.Handle, $0001, MOD_CONTROL,  ord('1'));
  RegisterHotKey(MainForm.Handle, $0002, MOD_CONTROL,  ord('2'));
  RegisterHotKey(MainForm.Handle, $0003, MOD_CONTROL,  ord('3'));
  RegisterHotKey(MainForm.Handle, $0004, MOD_CONTROL,  ord('4'));
  RegisterHotKey(MainForm.Handle, $0005, MOD_CONTROL,  ord('5'));
  RegisterHotKey(MainForm.Handle, $0006, MOD_CONTROL,  ord('6'));
  RegisterHotKey(MainForm.Handle, $0007, MOD_CONTROL,  ord('7'));
  RegisterHotKey(MainForm.Handle, $0008, MOD_CONTROL,  ord('8'));
  RegisterHotKey(MainForm.Handle, $0009, MOD_CONTROL,  ord('9'));
  RegisterHotKey(MainForm.Handle, $0010, MOD_CONTROL,  ord('0'));
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var PlikINI: TextFile;
begin
    UnregisterHotKey(MainForm.Handle, $0001);
    UnregisterHotKey(MainForm.Handle, $0002);
    UnregisterHotKey(MainForm.Handle, $0003);
    UnregisterHotKey(MainForm.Handle, $0004);
    UnregisterHotKey(MainForm.Handle, $0005);
    UnregisterHotKey(MainForm.Handle, $0006);
    UnregisterHotKey(MainForm.Handle, $0007);
    UnregisterHotKey(MainForm.Handle, $0008);
    UnregisterHotKey(MainForm.Handle, $0009);
    UnregisterHotKey(MainForm.Handle, $0010);
    AssignFile(PlikINI,'config.ini');
    ReWrite(PlikINI);
    Writeln(PlikINI,inttostr(MainForm.Left));
    Writeln(PlikINI,inttostr(MainForm.Top));
    CloseFile(PlikINI);
end;

procedure TMainForm.Image3Click(Sender: TObject);
begin
if MainForm.LiczbaPaskow<3 then inc(MainForm.LiczbaPaskow) else MainForm.LiczbaPaskow:=1;
ConfigForm.TrackBar.Position:=MainForm.LiczbaPaskow;
end;

procedure TMainForm.Image1Click(Sender: TObject);
begin
SetForegroundWindow(FindWindow(nil,'Lineage II'));
end;

procedure TMainForm.TimerTimer(Sender: TObject);
begin
  if zSkill1=true then 
end;

end.
