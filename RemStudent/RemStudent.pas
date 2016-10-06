unit RemStudent;

interface

uses
  DMod, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRemStudentForm = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RemStudentForm: TRemStudentForm;

implementation

{$R *.dfm}

uses Main;

procedure TRemStudentForm.Button1Click(Sender: TObject);
var
  iName: integer;
  cName: char;
  sSName: string;
  sFName: string;
  hFile: TextFile;
begin
  sSName:= MainForm.cbStudName.Items.Strings[MainForm.cbStudName.ItemIndex];
  sFName:= MainForm.cbStudName.Items.Strings[MainForm.cbStudName.ItemIndex];
  iName := 0;
  cName := ' ';
  AssignFile(hFile,'RemovedStudents.txt');
  ReWrite(hFile);
// If user has not selected anything
if MainForm.cbStudName.ItemIndex <> -1 then
begin
  // Create string with only surname from combo box contents
  while cName <> ',' do
  begin
    iName:= iName + 1;
    cName:= sSName[iName];
  end;
iName:= iName-1;
sSName:= Copy(sSName,1,iName);
iName:= iName+4;
sFName:= Copy(sFName,iName,Length(MainForm.cbStudName.Items.Strings[MainForm.cbStudName.ItemIndex]));

if (DataMod.dbConn.Connected) then
begin
  DataMod.qryRemStudent.Close();

    //Use parameters in SQL to login
    DataMod.qryRemStudent.Parameters.ParamByName('pmSName').Value := sSName;
    DataMod.qryRemStudent.Parameters.ParamByName('pmFName').Value:= sFName;
    DataMod.qryRemStudent.ExecSQL();

        if RemStudentForm.RadioButton1.Checked = true then
        begin
          Write(hFile, sSName + ' , ' + sFName + 'has been removed from the system because of leaving college.');
          CloseFile(hFile);
        end
        else
        if RemStudentForm.RadioButton2.Checked = true then
        begin
          Write(hFile, sSName + ' , ' + sFName + ' has been removed from the system because of: ' + Memo1.Text);
          CloseFile(hFile);
        end
        else
        begin
          ShowMessage('You have not selected a valid reason to remove this student.');
        end;
        RemStudentForm.Close;
        // Refresh combo box so student name being removed is removed
        MainForm.cbStudName.Clear;
        DataMod.qryStudentNames.Open;
        DataMod.qryStudentNames.First;
          while not DataMod.qryStudentNames.Eof do
           begin
            MainForm.cbStudName.Items.Add(DataMod.qryStudentNames.FieldbyName('StudentName').AsString) ;
            DataMod.qryStudentNames.Next;
           end;
        DataMod.qryStudentNames.Close;
  end
  else
    ShowMessage('An item needs to be selected to continue.');
end
else
  ShowMessage('No database connection found. Please try again or contact an administrator.');
end;

//-----------------------------------------------------------------------------

procedure TRemStudentForm.Button2Click(Sender: TObject);
begin
  RemStudentForm.Close;
end;

end.
