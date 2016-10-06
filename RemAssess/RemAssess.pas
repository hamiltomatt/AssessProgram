unit RemAssess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRemAssessForm = class(TForm)
    Label1: TLabel;
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
  RemAssessForm: TRemAssessForm;

implementation

{$R *.dfm}

uses Main, DMod;

procedure TRemAssessForm.Button1Click(Sender: TObject);
begin
if MainForm.cbAssessName.ItemIndex <> -1 then
begin
  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryRemAssess.Close();
    // Use parameters in SQL to login
    DataMod.qryRemAssess.Parameters.ParamByName('pmAName').Value := MainForm.cbAssessName.Items.Strings[MainForm.cbAssessName.ItemIndex];
    DataMod.qryRemAssess.ExecSQL;

    // Refresh the combo box to remove the assessment being removed
    DataMod.qryEdAssess.Open();
        RemAssessForm.Close;
        MainForm.cbAssessName.Clear;
    // Add asssessment names to combo box
        DataMod.qryAssessmentNames.Open;
        DataMod.qryAssessmentNames.First;
          while not DataMod.qryAssessmentNames.Eof do
           begin
            MainForm.cbAssessName.Items.Add(DataMod.qryAssessmentNames.FieldbyName('AssessName').AsString) ;
            DataMod.qryAssessmentNames.Next;
           end;
        DataMod.qryAssessmentNames.Close;
        DataMod.qryRemAssess.Close;

  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
else
   ShowMessage('An assessment needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TRemAssessForm.Button2Click(Sender: TObject);
begin
  RemAssessForm.Close;
end;

end.
