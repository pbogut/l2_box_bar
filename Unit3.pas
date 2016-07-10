unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TConfigForm = class(TForm)
    btnGrabWin: TButton;
    cmbSkill1: TComboBox;
    cmbSkill2: TComboBox;
    cmbSkill3: TComboBox;
    cmbSkill4: TComboBox;
    cmbSkill5: TComboBox;
    cmbSkill6: TComboBox;
    cmbSkill7: TComboBox;
    cmbSkill8: TComboBox;
    cmbSkill9: TComboBox;
    cmbSkill10: TComboBox;
    cmbSkill11: TComboBox;
    cmbSkill12: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cmbProfile: TComboBox;
    btnLoad: TButton;
    btnSave: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Shape: TShape;
    cmbSkill13: TComboBox;
    cmbSkill14: TComboBox;
    cmbSkill15: TComboBox;
    cmbSkill16: TComboBox;
    cmbSkill17: TComboBox;
    cmbSkill18: TComboBox;
    cmbSkill19: TComboBox;
    cmbSkill20: TComboBox;
    cmbSkill21: TComboBox;
    cmbSkill22: TComboBox;
    cmbSkill23: TComboBox;
    cmbSkill24: TComboBox;
    cmbSkill25: TComboBox;
    cmbSkill26: TComboBox;
    cmbSkill27: TComboBox;
    cmbSkill28: TComboBox;
    cmbSkill29: TComboBox;
    cmbSkill30: TComboBox;
    cmbSkill31: TComboBox;
    cmbSkill32: TComboBox;
    cmbSkill33: TComboBox;
    cmbSkill34: TComboBox;
    cmbSkill35: TComboBox;
    cmbSkill36: TComboBox;
    TrackBar: TTrackBar;
    Label7: TLabel;
    lblBars: TLabel;
    btnDel: TButton;
    procedure btnGrabWinClick(Sender: TObject);
    procedure cmbSkill1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbSkill2Change(Sender: TObject);
    procedure cmbSkill3Change(Sender: TObject);
    procedure cmbSkill4Change(Sender: TObject);
    procedure cmbSkill5Change(Sender: TObject);
    procedure cmbSkill6Change(Sender: TObject);
    procedure cmbSkill7Change(Sender: TObject);
    procedure cmbSkill8Change(Sender: TObject);
    procedure cmbSkill9Change(Sender: TObject);
    procedure cmbSkill10Change(Sender: TObject);
    procedure cmbSkill11Change(Sender: TObject);
    procedure cmbSkill12Change(Sender: TObject);
    procedure cmbSkill13Change(Sender: TObject);
    procedure cmbSkill14Change(Sender: TObject);
    procedure cmbSkill15Change(Sender: TObject);
    procedure cmbSkill16Change(Sender: TObject);
    procedure cmbSkill17Change(Sender: TObject);
    procedure cmbSkill18Change(Sender: TObject);
    procedure cmbSkill19Change(Sender: TObject);
    procedure cmbSkill20Change(Sender: TObject);
    procedure cmbSkill21Change(Sender: TObject);
    procedure cmbSkill22Change(Sender: TObject);
    procedure cmbSkill23Change(Sender: TObject);
    procedure cmbSkill24Change(Sender: TObject);
    procedure cmbSkill25Change(Sender: TObject);
    procedure cmbSkill26Change(Sender: TObject);
    procedure cmbSkill27Change(Sender: TObject);
    procedure cmbSkill28Change(Sender: TObject);
    procedure cmbSkill29Change(Sender: TObject);
    procedure cmbSkill30Change(Sender: TObject);
    procedure cmbSkill31Change(Sender: TObject);
    procedure cmbSkill32Change(Sender: TObject);
    procedure cmbSkill33Change(Sender: TObject);
    procedure cmbSkill34Change(Sender: TObject);
    procedure cmbSkill35Change(Sender: TObject);
    procedure cmbSkill36Change(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure TrackBarChange(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigForm: TConfigForm;

implementation

uses Unit1;

{$R *.dfm}

function FindFilesProfile(const Path, Mask: string; IncludeSubDir: boolean): integer;
var
 FindResult: integer;
 SearchRec : TSearchRec;
begin
 result := 0;

 FindResult := FindFirst(Path + Mask, faAnyFile - faDirectory, SearchRec);
 while FindResult = 0 do
 begin
   { do whatever you'd like to do with the files found }
   ConfigForm.cmbProfile.Items.Add(SearchRec.Name);
   result := result + 1;

   FindResult := FindNext(SearchRec);
 end;
 { free memory }
 FindClose(SearchRec);

 if not IncludeSubDir then 
   Exit; 

FindResult := FindFirst(Path + '*.*', faDirectory, SearchRec);
 while FindResult = 0 do 
 begin 
   if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
     result := result + 
       FindFilesProfile (Path + SearchRec.Name + '\', Mask, TRUE);

   FindResult := FindNext(SearchRec);
 end; 
 { free memory } 
 FindClose(SearchRec);
end;

function FindFilesSkills(const Path, Mask: string; IncludeSubDir: boolean): integer;
var
 i: integer;
 SkillName: string;
 FindResult: integer;
 SearchRec : TSearchRec;
begin
 result := 0;

 FindResult := FindFirst(Path + Mask, faAnyFile - faDirectory, SearchRec);
 while FindResult = 0 do
 begin
   { do whatever you'd like to do with the files found }
   //SkillName:=SearchRec.Name
   SkillName:='';
   for i:=1 to length(SearchRec.Name)-4 do SkillName:=SkillName+SearchRec.Name[i];
   if SkillName <> 'noimage' then begin
     ConfigForm.cmbSkill1.Items.Add(SkillName);
     ConfigForm.cmbSkill2.Items.Add(SkillName);
     ConfigForm.cmbSkill3.Items.Add(SkillName);
     ConfigForm.cmbSkill4.Items.Add(SkillName);
     ConfigForm.cmbSkill5.Items.Add(SkillName);
     ConfigForm.cmbSkill6.Items.Add(SkillName);
     ConfigForm.cmbSkill7.Items.Add(SkillName);
     ConfigForm.cmbSkill8.Items.Add(SkillName);
     ConfigForm.cmbSkill9.Items.Add(SkillName);
     ConfigForm.cmbSkill10.Items.Add(SkillName);
     ConfigForm.cmbSkill11.Items.Add(SkillName);
     ConfigForm.cmbSkill12.Items.Add(SkillName);
     ConfigForm.cmbSkill13.Items.Add(SkillName);
     ConfigForm.cmbSkill14.Items.Add(SkillName);
     ConfigForm.cmbSkill15.Items.Add(SkillName);
     ConfigForm.cmbSkill16.Items.Add(SkillName);
     ConfigForm.cmbSkill17.Items.Add(SkillName);
     ConfigForm.cmbSkill18.Items.Add(SkillName);
     ConfigForm.cmbSkill19.Items.Add(SkillName);
     ConfigForm.cmbSkill20.Items.Add(SkillName);
     ConfigForm.cmbSkill21.Items.Add(SkillName);
     ConfigForm.cmbSkill22.Items.Add(SkillName);
     ConfigForm.cmbSkill23.Items.Add(SkillName);
     ConfigForm.cmbSkill24.Items.Add(SkillName);
     ConfigForm.cmbSkill25.Items.Add(SkillName);
     ConfigForm.cmbSkill26.Items.Add(SkillName);
     ConfigForm.cmbSkill27.Items.Add(SkillName);
     ConfigForm.cmbSkill28.Items.Add(SkillName);
     ConfigForm.cmbSkill29.Items.Add(SkillName);
     ConfigForm.cmbSkill30.Items.Add(SkillName);
     ConfigForm.cmbSkill31.Items.Add(SkillName);
     ConfigForm.cmbSkill32.Items.Add(SkillName);
     ConfigForm.cmbSkill33.Items.Add(SkillName);
     ConfigForm.cmbSkill34.Items.Add(SkillName);
     ConfigForm.cmbSkill35.Items.Add(SkillName);
     ConfigForm.cmbSkill36.Items.Add(SkillName);
     result := result + 1;
   end;
   FindResult := FindNext(SearchRec);
 end;
 { free memory }
 FindClose(SearchRec);

 if not IncludeSubDir then 
   Exit; 

FindResult := FindFirst(Path + '*.*', faDirectory, SearchRec);
 while FindResult = 0 do 
 begin 
   if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
     result := result + 
       FindFilesSkills (Path + SearchRec.Name + '\', Mask, TRUE);

   FindResult := FindNext(SearchRec);
 end; 
 { free memory } 
 FindClose(SearchRec);
end;


procedure TConfigForm.btnGrabWinClick(Sender: TObject);
begin
MainForm.SpamUchwyt := FindWindow(nil,'Lineage II');
if MainForm.SpamUchwyt <> 0 then shape.Brush.Color:=clGreen else shape.Brush.Color:=clRed; 
end;

procedure TConfigForm.FormCreate(Sender: TObject);
begin
  FindFilesSkills('.\skills\','*.bmp',false);
  FindFilesProfile('.\profiles\','*',false);
end;

procedure TConfigForm.cmbSkill1Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill1.Text+'.bmp') then
MainForm.skill1.Picture.LoadFromFile('.\skills\'+cmbSkill1.Text+'.bmp')
else
MainForm.skill1.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill2Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill2.Text+'.bmp') then
MainForm.skill2.Picture.LoadFromFile('.\skills\'+cmbSkill2.Text+'.bmp')
else
MainForm.skill2.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill3Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill3.Text+'.bmp') then
MainForm.skill3.Picture.LoadFromFile('.\skills\'+cmbSkill3.Text+'.bmp')
else
MainForm.skill3.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill4Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill4.Text+'.bmp') then
MainForm.skill4.Picture.LoadFromFile('.\skills\'+cmbSkill4.Text+'.bmp')
else
MainForm.skill4.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill5Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill5.Text+'.bmp') then
MainForm.skill5.Picture.LoadFromFile('.\skills\'+cmbSkill5.Text+'.bmp')
else
MainForm.skill5.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill6Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill6.Text+'.bmp') then
MainForm.skill6.Picture.LoadFromFile('.\skills\'+cmbSkill6.Text+'.bmp')
else
MainForm.skill6.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill7Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill7.Text+'.bmp') then
MainForm.skill7.Picture.LoadFromFile('.\skills\'+cmbSkill7.Text+'.bmp')
else
MainForm.skill7.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill8Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill8.Text+'.bmp') then
MainForm.skill8.Picture.LoadFromFile('.\skills\'+cmbSkill8.Text+'.bmp')
else
MainForm.skill8.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill9Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill9.Text+'.bmp') then
MainForm.skill9.Picture.LoadFromFile('.\skills\'+cmbSkill9.Text+'.bmp')
else
MainForm.skill9.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill10Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill10.Text+'.bmp') then
MainForm.skill10.Picture.LoadFromFile('.\skills\'+cmbSkill10.Text+'.bmp')
else
MainForm.skill10.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill11Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill11.Text+'.bmp') then
MainForm.skill11.Picture.LoadFromFile('.\skills\'+cmbSkill11.Text+'.bmp')
else
MainForm.skill11.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill12Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill12.Text+'.bmp') then
MainForm.skill12.Picture.LoadFromFile('.\skills\'+cmbSkill12.Text+'.bmp')
else
MainForm.skill12.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill13Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill13.Text+'.bmp') then
MainForm.skill13.Picture.LoadFromFile('.\skills\'+cmbSkill13.Text+'.bmp')
else
MainForm.skill13.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill14Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill14.Text+'.bmp') then
MainForm.skill14.Picture.LoadFromFile('.\skills\'+cmbSkill14.Text+'.bmp')
else
MainForm.skill14.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill15Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill15.Text+'.bmp') then
MainForm.skill15.Picture.LoadFromFile('.\skills\'+cmbSkill15.Text+'.bmp')
else
MainForm.skill15.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill16Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill16.Text+'.bmp') then
MainForm.skill16.Picture.LoadFromFile('.\skills\'+cmbSkill16.Text+'.bmp')
else
MainForm.skill16.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill17Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill17.Text+'.bmp') then
MainForm.skill17.Picture.LoadFromFile('.\skills\'+cmbSkill17.Text+'.bmp')
else
MainForm.skill17.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill18Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill18.Text+'.bmp') then
MainForm.skill18.Picture.LoadFromFile('.\skills\'+cmbSkill18.Text+'.bmp')
else
MainForm.skill18.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill19Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill19.Text+'.bmp') then
MainForm.skill19.Picture.LoadFromFile('.\skills\'+cmbSkill19.Text+'.bmp')
else
MainForm.skill19.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill20Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill20.Text+'.bmp') then
MainForm.skill20.Picture.LoadFromFile('.\skills\'+cmbSkill20.Text+'.bmp')
else
MainForm.skill20.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill21Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill21.Text+'.bmp') then
MainForm.skill21.Picture.LoadFromFile('.\skills\'+cmbSkill21.Text+'.bmp')
else
MainForm.skill21.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill22Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill22.Text+'.bmp') then
MainForm.skill22.Picture.LoadFromFile('.\skills\'+cmbSkill22.Text+'.bmp')
else
MainForm.skill22.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill23Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill23.Text+'.bmp') then
MainForm.skill23.Picture.LoadFromFile('.\skills\'+cmbSkill23.Text+'.bmp')
else
MainForm.skill23.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill24Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill24.Text+'.bmp') then
MainForm.skill24.Picture.LoadFromFile('.\skills\'+cmbSkill24.Text+'.bmp')
else
MainForm.skill24.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill25Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill25.Text+'.bmp') then
MainForm.skill25.Picture.LoadFromFile('.\skills\'+cmbSkill25.Text+'.bmp')
else
MainForm.skill25.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill26Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill26.Text+'.bmp') then
MainForm.skill26.Picture.LoadFromFile('.\skills\'+cmbSkill26.Text+'.bmp')
else
MainForm.skill26.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill27Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill27.Text+'.bmp') then
MainForm.skill27.Picture.LoadFromFile('.\skills\'+cmbSkill27.Text+'.bmp')
else
MainForm.skill27.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill28Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill28.Text+'.bmp') then
MainForm.skill28.Picture.LoadFromFile('.\skills\'+cmbSkill28.Text+'.bmp')
else
MainForm.skill28.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill29Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill29.Text+'.bmp') then
MainForm.skill29.Picture.LoadFromFile('.\skills\'+cmbSkill29.Text+'.bmp')
else
MainForm.skill29.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill30Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill30.Text+'.bmp') then
MainForm.skill30.Picture.LoadFromFile('.\skills\'+cmbSkill30.Text+'.bmp')
else
MainForm.skill30.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill31Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill31.Text+'.bmp') then
MainForm.skill31.Picture.LoadFromFile('.\skills\'+cmbSkill31.Text+'.bmp')
else
MainForm.skill31.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill32Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill32.Text+'.bmp') then
MainForm.skill32.Picture.LoadFromFile('.\skills\'+cmbSkill32.Text+'.bmp')
else
MainForm.skill32.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill33Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill33.Text+'.bmp') then
MainForm.skill33.Picture.LoadFromFile('.\skills\'+cmbSkill33.Text+'.bmp')
else
MainForm.skill33.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill34Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill34.Text+'.bmp') then
MainForm.skill34.Picture.LoadFromFile('.\skills\'+cmbSkill34.Text+'.bmp')
else
MainForm.skill34.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill35Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill35.Text+'.bmp') then
MainForm.skill35.Picture.LoadFromFile('.\skills\'+cmbSkill35.Text+'.bmp')
else
MainForm.skill35.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.cmbSkill36Change(Sender: TObject);
begin
if FileExists('.\skills\'+cmbSkill36.Text+'.bmp') then
MainForm.skill36.Picture.LoadFromFile('.\skills\'+cmbSkill36.Text+'.bmp')
else
MainForm.skill36.Picture.LoadFromFile('.\skills\noimage.bmp');
end;

procedure TConfigForm.btnLoadClick(Sender: TObject);
var Plik: TextFile;
    s: string;
begin
if FileExists('.\profiles\'+cmbProfile.Text) then begin
  AssignFile(Plik,'.\profiles\'+cmbProfile.Text);
  Reset(Plik);
  Readln(Plik,s);
  cmbSkill1.Text:=s;
  cmbSkill1Change(Sender);
  Readln(Plik,s);
  cmbSkill2.Text:=s;
  cmbSkill2Change(Sender);
  Readln(Plik,s);
  cmbSkill3.Text:=s;
  cmbSkill3Change(Sender);
  Readln(Plik,s);
  cmbSkill4.Text:=s;
  cmbSkill4Change(Sender);
  Readln(Plik,s);
  cmbSkill5.Text:=s;
  cmbSkill5Change(Sender);
  Readln(Plik,s);
  cmbSkill6.Text:=s;
  cmbSkill6Change(Sender);
  Readln(Plik,s);
  cmbSkill7.Text:=s;
  cmbSkill7Change(Sender);
  Readln(Plik,s);
  cmbSkill8.Text:=s;
  cmbSkill8Change(Sender);
  Readln(Plik,s);
  cmbSkill9.Text:=s;
  cmbSkill9Change(Sender);
  Readln(Plik,s);
  cmbSkill10.Text:=s;
  cmbSkill10Change(Sender);
  Readln(Plik,s);
  cmbSkill11.Text:=s;
  cmbSkill11Change(Sender);
  Readln(Plik,s);
  cmbSkill12.Text:=s;
  cmbSkill12Change(Sender);
  Readln(Plik,s);
  cmbSkill13.Text:=s;
  cmbSkill13Change(Sender);
  Readln(Plik,s);
  cmbSkill14.Text:=s;
  cmbSkill14Change(Sender);
  Readln(Plik,s);
  cmbSkill15.Text:=s;
  cmbSkill15Change(Sender);
  Readln(Plik,s);
  cmbSkill16.Text:=s;
  cmbSkill16Change(Sender);
  Readln(Plik,s);
  cmbSkill17.Text:=s;
  cmbSkill17Change(Sender);
  Readln(Plik,s);
  cmbSkill18.Text:=s;
  cmbSkill18Change(Sender);
  Readln(Plik,s);
  cmbSkill19.Text:=s;
  cmbSkill19Change(Sender);
  Readln(Plik,s);
  cmbSkill20.Text:=s;
  cmbSkill20Change(Sender);
  Readln(Plik,s);
  cmbSkill21.Text:=s;
  cmbSkill21Change(Sender);
  Readln(Plik,s);
  cmbSkill22.Text:=s;
  cmbSkill22Change(Sender);
  Readln(Plik,s);
  cmbSkill23.Text:=s;
  cmbSkill23Change(Sender);
  Readln(Plik,s);
  cmbSkill24.Text:=s;
  cmbSkill24Change(Sender);
  Readln(Plik,s);
  cmbSkill25.Text:=s;
  cmbSkill25Change(Sender);
  Readln(Plik,s);
  cmbSkill26.Text:=s;
  cmbSkill26Change(Sender);
  Readln(Plik,s);
  cmbSkill27.Text:=s;
  cmbSkill27Change(Sender);
  Readln(Plik,s);
  cmbSkill28.Text:=s;
  cmbSkill28Change(Sender);
  Readln(Plik,s);
  cmbSkill29.Text:=s;
  cmbSkill29Change(Sender);
  Readln(Plik,s);
  cmbSkill30.Text:=s;
  cmbSkill30Change(Sender);
  Readln(Plik,s);
  cmbSkill31.Text:=s;
  cmbSkill31Change(Sender);
  Readln(Plik,s);
  cmbSkill32.Text:=s;
  cmbSkill32Change(Sender);
  Readln(Plik,s);
  cmbSkill33.Text:=s;
  cmbSkill33Change(Sender);
  Readln(Plik,s);
  cmbSkill34.Text:=s;
  cmbSkill34Change(Sender);
  Readln(Plik,s);
  cmbSkill35.Text:=s;
  cmbSkill35Change(Sender);
  Readln(Plik,s);
  cmbSkill36.Text:=s;
  cmbSkill36Change(Sender);
  Readln(Plik,s);
  try
    TrackBar.Position:=strtoint(s);
  except
    //CloseFile(Plik);
  end;
  CloseFile(Plik);
end;
end;

procedure TConfigForm.btnSaveClick(Sender: TObject);
var Plik: TextFile;
begin
  AssignFile(Plik,'.\profiles\' + cmbProfile.Text);
  ReWrite(Plik);
  Writeln(Plik,cmbSkill1.Text);
  Writeln(Plik,cmbSkill2.Text);
  Writeln(Plik,cmbSkill3.Text);
  Writeln(Plik,cmbSkill4.Text);
  Writeln(Plik,cmbSkill5.Text);
  Writeln(Plik,cmbSkill6.Text);
  Writeln(Plik,cmbSkill7.Text);
  Writeln(Plik,cmbSkill8.Text);
  Writeln(Plik,cmbSkill9.Text);
  Writeln(Plik,cmbSkill10.Text);
  Writeln(Plik,cmbSkill11.Text);
  Writeln(Plik,cmbSkill12.Text);
  Writeln(Plik,cmbSkill13.Text);
  Writeln(Plik,cmbSkill14.Text);
  Writeln(Plik,cmbSkill15.Text);
  Writeln(Plik,cmbSkill16.Text);
  Writeln(Plik,cmbSkill17.Text);
  Writeln(Plik,cmbSkill18.Text);
  Writeln(Plik,cmbSkill19.Text);
  Writeln(Plik,cmbSkill20.Text);
  Writeln(Plik,cmbSkill21.Text);
  Writeln(Plik,cmbSkill22.Text);
  Writeln(Plik,cmbSkill23.Text);
  Writeln(Plik,cmbSkill24.Text);
  Writeln(Plik,cmbSkill25.Text);
  Writeln(Plik,cmbSkill26.Text);
  Writeln(Plik,cmbSkill27.Text);
  Writeln(Plik,cmbSkill28.Text);
  Writeln(Plik,cmbSkill29.Text);
  Writeln(Plik,cmbSkill30.Text);
  Writeln(Plik,cmbSkill31.Text);
  Writeln(Plik,cmbSkill32.Text);
  Writeln(Plik,cmbSkill33.Text);
  Writeln(Plik,cmbSkill34.Text);
  Writeln(Plik,cmbSkill35.Text);
  Writeln(Plik,cmbSkill36.Text);
  Writeln(Plik,inttostr(TrackBar.Position));
  CloseFile(Plik);
  cmbProfile.Items.Clear;
  FindFilesProfile('.\profiles\','*',false);
end;

procedure TConfigForm.TrackBarChange(Sender: TObject);
begin
lblBars.Caption:=inttostr(TrackBar.Position);
MainForm.LiczbaPaskow:=TrackBar.Position;
case TrackBar.Position of
  1:  begin
        MainForm.Height:=47;
        ConfigForm.Width:=340;
      end;
  2:  begin
        MainForm.Height:=94;
        ConfigForm.Width:=492;
      end;
  3:  begin
        Mainform.Height:=141;
        ConfigForm.Width:=644;
      end;

end;

end;

procedure TConfigForm.btnDelClick(Sender: TObject);
begin
DeleteFile('.\profiles\' + cmbProfile.Text);
cmbProfile.Items.Clear;
FindFilesProfile('.\profiles\','*',false);
cmbProfile.Text:='';
cmbSkill1.Text:='';
cmbSkill1Change(nil);
cmbSkill2.Text:='';
cmbSkill2Change(nil);
cmbSkill3.Text:='';
cmbSkill3Change(nil);
cmbSkill4.Text:='';
cmbSkill4Change(nil);
cmbSkill5.Text:='';
cmbSkill5Change(nil);
cmbSkill6.Text:='';
cmbSkill6Change(nil);
cmbSkill7.Text:='';
cmbSkill7Change(nil);
cmbSkill8.Text:='';
cmbSkill8Change(nil);
cmbSkill9.Text:='';
cmbSkill9Change(nil);
cmbSkill10.Text:='';
cmbSkill10Change(nil);
cmbSkill11.Text:='';
cmbSkill11Change(nil);
cmbSkill12.Text:='';
cmbSkill12Change(nil);
cmbSkill13.Text:='';
cmbSkill13Change(nil);
cmbSkill14.Text:='';
cmbSkill14Change(nil);
cmbSkill15.Text:='';
cmbSkill15Change(nil);
cmbSkill16.Text:='';
cmbSkill16Change(nil);
cmbSkill17.Text:='';
cmbSkill17Change(nil);
cmbSkill18.Text:='';
cmbSkill18Change(nil);
cmbSkill19.Text:='';
cmbSkill19Change(nil);
cmbSkill20.Text:='';
cmbSkill20Change(nil);
cmbSkill21.Text:='';
cmbSkill21Change(nil);
cmbSkill22.Text:='';
cmbSkill22Change(nil);
cmbSkill23.Text:='';
cmbSkill23Change(nil);
cmbSkill24.Text:='';
cmbSkill24Change(nil);
cmbSkill25.Text:='';
cmbSkill25Change(nil);
cmbSkill26.Text:='';
cmbSkill26Change(nil);
cmbSkill27.Text:='';
cmbSkill27Change(nil);
cmbSkill28.Text:='';
cmbSkill28Change(nil);
cmbSkill29.Text:='';
cmbSkill29Change(nil);
cmbSkill30.Text:='';
cmbSkill30Change(nil);
cmbSkill31.Text:='';
cmbSkill31Change(nil);
cmbSkill32.Text:='';
cmbSkill32Change(nil);
cmbSkill33.Text:='';
cmbSkill33Change(nil);
cmbSkill34.Text:='';
cmbSkill34Change(nil);
cmbSkill35.Text:='';
cmbSkill35Change(nil);
cmbSkill36.Text:='';
cmbSkill36Change(nil);
TrackBar.Position:=1;
end;

end.
