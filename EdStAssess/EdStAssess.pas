unit EdStAssess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DMod, Vcl.ComCtrls;

type
  TEdStAssessForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edRawMark: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    edtGrade: TEdit;
    Label4: TLabel;
    cbStName: TComboBoxEx;
    cbAssName: TComboBoxEx;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillStudentCombo(sStudentName : string);
    procedure FillAssessmentCombo(sAssessName : string);
  end;

var
  EdStAssessForm: TEdStAssessForm;

implementation

{$R *.dfm}

//-----------------------------------------------------------------------------

procedure TEdStAssessForm.FillStudentCombo(sStudentName : string);
var
  iCounter : integer;
  iItemIndex : integer;

begin
  iItemIndex := -1;
  cbStName.ItemsEx.Clear;

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryStudentNameID.Close();

// Open student name SQL query
    DataMod.qryStudentNameID.Open();

    if (DataMod.qryStudentNameID.Active) and (DataMod.qryStudentNameID.RecordCount > 0) then
    begin
      DataMod.qryStudentNameID.First;
// Loop through items adding student name and student ID
      iCounter := 0;
      while not(DataMod.qryStudentNameID.Eof) do
      begin
        cbStName.ItemsEx.AddItem(DataMod.qryStudentNameID.FieldByName('StudentName').AsString,
                                 DataMod.qryStudentNameID.FieldByName('StudentID').AsInteger,
                                 -1,-1,1, nil);

//If current student name is student being added, change item index to counter
        if (DataMod.qryStudentNameID.FieldByName('StudentName').AsString = sStudentName) then
          iItemIndex := iCounter
        else
          iCounter := iCounter + 1;

        DataMod.qryStudentNameID.Next;
      end;
    end;
    DataMod.qryStudentNameID.Close();
  end;
  if (iItemIndex > -1) then
    cbStName.ItemIndex  := iItemIndex;
end;

//-----------------------------------------------------------------------------

procedure TEdStAssessForm.FillAssessmentCombo(sAssessName : string);
var
  iCounter : integer;
  iItemIndex : integer;
begin
  cbAssName.ItemsEx.Clear;
  iItemIndex := -1;

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryAssessNameID.Close();

    DataMod.qryAssessNameID.Open();

    if (DataMod.qryAssessNameID.Active) and (DataMod.qryAssessNameID.RecordCount > 0) then
    begin
      DataMod.qryAssessNameID.First;
      iCounter := 0;

      // Loop through query adding both assessment name and ID to combo box
      while not(DataMod.qryAssessNameID.Eof) do
      begin
        cbAssName.ItemsEx.AddItem(DataMod.qryAssessNameID.FieldByName('AssessName').AsString,
                                 DataMod.qryAssessNameID.FieldByName('AssessmentID').AsInteger,
                                 -1,-1,1, nil);

        //If current assessment name is assessment being added, change item index to counter
        if (DataMod.qryAssessNameID.FieldByName('AssessName').AsString = sAssessName)  then
          iItemIndex := iCounter
        else
          iCounter := iCounter + 1;

        DataMod.qryAssessNameID.Next;
      end;
    end;
    DataMod.qryAssessNameID.Close();
  end;
    if (iItemIndex > -1) then
    cbAssName.ItemIndex  := iItemIndex;
end;

//-----------------------------------------------------------------------------

procedure TEdStAssessForm.Button1Click(Sender: TObject);
begin
  if (DataMod.dbConn.Connected) then
  begin
    if ( (cbStName.Enabled = false) and (cbAssName.Enabled = false) ) then
    begin
      //Update existing record in tblAssessment
      DataMod.qryUpdStAssess.Close();

      DataMod.qryUpdStAssess.Parameters.ParamByName('pmSID').Value := cbStName.ItemsEx.Items[cbStName.ItemIndex].ImageIndex;
      DataMod.qryUpdStAssess.Parameters.ParamByName('pmAID').Value := cbAssName.ItemsEx.Items[cbAssName.ItemIndex].ImageIndex;
      DataMod.qryUpdStAssess.Parameters.ParamByName('pmSIDD').Value := cbStName.ItemsEx.Items[cbStName.ItemIndex].ImageIndex;
      DataMod.qryUpdStAssess.Parameters.ParamByName('pmAIDD').Value := cbAssName.ItemsEx.Items[cbAssName.ItemIndex].ImageIndex;
      DataMod.qryUpdStAssess.Parameters.ParamByName('pmRM').Value := edRawMark.Text;
      DataMod.qryUpdStAssess.Parameters.ParamByName('pmGrade').Value := edtGrade.Text;

      DataMod.qryUpdStAssess.ExecSQL();
    end
    else
    begin
      DataMod.qryInsStAssess.Close();

      // Insert new record in tblAssessment
      DataMod.qryInsStAssess.Parameters.ParamByName('pmSID').Value := cbStName.ItemsEx.Items[cbStName.ItemIndex].ImageIndex;
      DataMod.qryInsStAssess.Parameters.ParamByName('pmAID').Value := cbAssName.ItemsEx.Items[cbAssName.ItemIndex].ImageIndex;
      DataMod.qryInsStAssess.Parameters.ParamByName('pmRM').Value := edRawMark.Text;
      DataMod.qryInsStAssess.Parameters.ParamByName('pmGrade').Value := edtGrade.Text;

      DataMod.qryInsStAssess.ExecSQL();
    end;
  end;
  Close;
end;

//-----------------------------------------------------------------------------

procedure TEdStAssessForm.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
