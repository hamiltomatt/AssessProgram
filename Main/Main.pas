unit Main;

interface

uses
  RemStudent, RemAssess, EdStAssess, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DMod, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.ExtCtrls, Vcl.Menus;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    Logon: TTabSheet;
    lbTeachName: TLabel;
    lbPass: TLabel;
    Main: TTabSheet;
    cbTeachName: TComboBox;
    edPass: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    ViewStudent: TTabSheet;
    EditStudent: TTabSheet;
    ViewAssess: TTabSheet;
    EditAssess: TTabSheet;
    btnNewStudent: TButton;
    btnNewAssess: TButton;
    lbStudName: TLabel;
    lbAssessName: TLabel;
    cbStudName: TComboBox;
    cbAssessName: TComboBox;
    btnViewStudent: TButton;
    btnViewAssess: TButton;
    btnEditStudent: TButton;
    btnEditAssess: TButton;
    btnRemoveStudent: TButton;
    btnRemoveAssess: TButton;
    lbTut: TLabel;
    lbGCS: TLabel;
    lbBas: TLabel;
    lbTar: TLabel;
    lbSta: TLabel;
    lbEth: TLabel;
    lbBKE: TLabel;
    lbBKM: TLabel;
    lbWUp: TLabel;
    lbLDS: TLabel;
    btnViewSEdit: TButton;
    btnViewSCancel: TButton;
    lbEdStud: TLabel;
    lbEdFore: TLabel;
    lbEdTutor: TLabel;
    lbEdGCSE: TLabel;
    lbEdBase: TLabel;
    lbEdTarget: TLabel;
    lbEdStatus: TLabel;
    lbEdEthn: TLabel;
    lbEdBKSBE: TLabel;
    lbEdBKSBM: TLabel;
    lbEdWU: TLabel;
    lbEdLDd: TLabel;
    edStudSurn: TEdit;
    edStudFore: TEdit;
    cbTutor: TComboBox;
    cbTargetGrade: TComboBox;
    cbStatus: TComboBox;
    cbEthnicity: TComboBox;
    cbBKSBEng: TComboBox;
    cbBKSBMat: TComboBox;
    cbWardUpl: TComboBox;
    edGCSE: TEdit;
    btnEditSDone: TButton;
    btnEditSCancel: TButton;
    meLDd: TMemo;
    lbViewA: TLabel;
    btnViewAAdd: TButton;
    btnViewAEdit: TButton;
    btnViewACancel: TButton;
    lbEdName: TLabel;
    lbEdType: TLabel;
    lbEdDate: TLabel;
    lbEdTotal: TLabel;
    edEditAName: TEdit;
    cmbEditAType: TComboBox;
    edEditADate: TEdit;
    edEditATotal: TEdit;
    btnEditADone: TButton;
    btnEditACancel: TButton;
    lbLDd: TLabel;
    lbEdLDS: TLabel;
    cbLDS: TComboBox;
    lbEmail: TLabel;
    edEmail: TEdit;
    sgStudent: TStringGrid;
    sgAssess: TStringGrid;
    puViewStudent: TPopupMenu;
    itEdStAs: TMenuItem;
    puViewAssess: TPopupMenu;
    itNwStAs: TMenuItem;
    NewStudentAssessment1: TMenuItem;
    cbBaseline: TComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewStudentClick(Sender: TObject);
    procedure btnNewAssessClick(Sender: TObject);
    procedure btnViewStudentClick(Sender: TObject);
    procedure btnEditStudentClick(Sender: TObject);
    procedure btnViewAssessClick(Sender: TObject);
    procedure btnEditAssessClick(Sender: TObject);
    procedure btnViewSEditClick(Sender: TObject);
    procedure btnViewSCancelClick(Sender: TObject);
    procedure btnEditSDoneClick(Sender: TObject);
    procedure btnEditSCancelClick(Sender: TObject);
    procedure btnViewAAddClick(Sender: TObject);
    procedure btnRemoveStudentClick(Sender: TObject);
    procedure btnRemoveAssessClick(Sender: TObject);
    procedure btnEditADoneClick(Sender: TObject);
    procedure btnEditACancelClick(Sender: TObject);
    procedure btnViewAEditClick(Sender: TObject);
    procedure btnViewACancelClick(Sender: TObject);
    procedure sgStudentDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgAssessDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure itEdStAsClick(Sender: TObject);
    procedure sgStudentMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sgAssessMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditStudentAssessment1Click(Sender: TObject);
    procedure itNwStAsClick(Sender: TObject);
    procedure NewStudentAssessment1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

//-----------------------------------------------------------------------------

procedure TMainForm.btnNewAssessClick(Sender: TObject);
begin
// Changes page of PageControl to EditAssess form
  PageControl1.ActivePageIndex := 5;
// Changes size of program window
  MainForm.Width:= 330;
  MainForm.Height:= 220;
  MainForm.Caption:= 'New Assessment - ' + MainForm.Caption;
// Clear all edit and combo boxes if anything contained
  edEditAName.Clear;
  cmbEditAType.ItemIndex := -1;
  edEditADate.Clear;
  edEditATotal.Clear;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnNewStudentClick(Sender: TObject);
begin
// Changes page of PageControl to EditStudent form
  PageControl1.ActivePageIndex := 3;
// Changes size of program window
  MainForm.Width := 480;
  MainForm.Height:= 300;
  MainForm.Caption:= 'New Student - ' + MainForm.Caption;
// Clear all edit and combo boxes if anything contained
  edStudSurn.Clear;
  edStudFore.Clear;
  edGCSE.Clear;
  meLDd.Clear;
  cbBaseline.ItemIndex := -1;
  cbTargetGrade.ItemIndex := -1;
  cbStatus.ItemIndex := -1;
  cbEthnicity.ItemIndex := -1;
  cbBKSBEng.ItemIndex := -1;
  cbBKSBMat.ItemIndex := -1;
  cbWardUpl.ItemIndex := -1;
  cbLDS.ItemIndex := -1;
  edEmail.Clear;
  cbTutor.ItemIndex := -1;

  DataMod.qryTeacherNames.Open;
  DataMod.qryTeacherNames.First;
  //Use SQL to add staff names to Tutor combo box on EditStudent page
  while not DataMod.qryTeacherNames.Eof do
  begin
    cbTutor.Items.Add(DataMod.qryTeacherNames.FieldByName('StaffName').AsString) ;
    DataMod.qryTeacherNames.Next;
  end;
  DataMod.qryTeacherNames.Close;

  cbStudName.Items.Clear;
  DataMod.qryStudentNames.Open;
  DataMod.qryStudentNames.First;
    while not DataMod.qryStudentNames.Eof do
     begin
      cbStudName.Items.Add(DataMod.qryStudentNames.FieldbyName('StudentName').AsString) ;
      DataMod.qryStudentNames.Next;
     end;
  DataMod.qryStudentNames.Close;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnRemoveAssessClick(Sender: TObject);
begin
if cbAssessName.ItemIndex <> -1 then
begin
  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdAssess.Close();
    //Use parameters in SQL to login
    DataMod.qryEdAssess.Parameters.ParamByName('pmEAName').Value := cbAssessName.Items.Strings[cbAssessName.ItemIndex];
    DataMod.qryEdAssess.Open();

    if (DataMod.qryEdAssess.Active) then
    begin
      if (DataMod.qryEdAssess.RecordCount = 1) then
      begin
        // Open dialog RemoveAssesss
        RemAssessForm.Show;
        // Use SQL query to remove an assessment's record from the database
      end
      else
        ShowMessage('Invalid username or password. Please make sure they are correct or contact an administrator.');
        DataMod.qryEdAssess.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
  ShowMessage('An assessment needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnRemoveStudentClick(Sender: TObject);
var
  iName: integer;
  cName: char;
  sSName: string;
  sFName: string;
begin
  iName := 0;
  sSName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  sFName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  cName := ' ';
if cbStudName.ItemIndex <> -1 then
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
    sFName:= Copy(sFName,iName,Length(cbStudName.Items.Strings[cbStudName.ItemIndex]));

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdStudent.Close();

    //Use parameters in SQL to login

    DataMod.qryEdStudent.Parameters.ParamByName('pmESName').Value := sSName;
    DataMod.qryEdStudent.Parameters.ParamByName('pmEFName').Value := sFName;
    DataMod.qryEdStudent.Open();

    if (DataMod.qryEdStudent.Active) then
    begin
      if (DataMod.qryEdStudent.RecordCount = 1) then
      begin
      // Open dialog RemoveStudent
        RemStudentForm.Show;
      // Use SQL query to remove a students record from the database
      end
      else
        ShowMessage('Invalid username or password. Please make sure they are correct or contact an administrator.');
        DataMod.qryEdStudent.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
  ShowMessage('A student needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewAAddClick(Sender: TObject);
begin
// Open dialog EditAssess
    EdStAssessForm.FillStudentCombo('');
    EdStAssessForm.FillAssessmentCombo(cbAssessName.Items.Strings[cbAssessName.ItemIndex]);

    EdStAssessForm.cbStName.Enabled := true;
    EdStAssessForm.cbAssName.Enabled := false;

    EdStAssessForm.Show;
// Use SQL query to add individual assessment to database
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewACancelClick(Sender: TObject);
begin
// Changes page of PageControl to Main form
  PageControl1.ActivePageIndex := 1;
// Changes size of program window
  MainForm.Width:= 697;
  MainForm.Height:= 200;
  MainForm.Caption := 'Assessment Program';
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewAEditClick(Sender: TObject);
begin
// Use SQL query to fill assessment data with details
// Changes page of PageControl to EditAssess form
  PageControl1.ActivePageIndex := 5;
// Changes size of program window
  MainForm.Width := 320;
  MainForm.Height:= 230;
// Use SQL query to find assessment information through assessment name
  btnEditAssess.Click;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewAssessClick(Sender: TObject);
var
iCount: integer;
begin
if cbAssessName.ItemIndex <> -1 then
begin
  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdAssess.Close();
    //Use parameters in SQL to login
    DataMod.qryEdAssess.Parameters.ParamByName('pmEAName').Value := cbAssessName.Items.Strings[cbAssessName.ItemIndex];
    DataMod.qryEdAssess.Open();

    if (DataMod.qryEdAssess.Active) then
    begin
      if (DataMod.qryEdAssess.RecordCount = 1) then
      begin
        // Changes page of PageControl to ViewAssess form
          PageControl1.ActivePageIndex := 4;
        // Changes size of program window
          MainForm.Width := 697;
          MainForm.Height:= 453;
        // Use SQL query to find assessment information from database with assessment name and fill the edit/combo boxes
        lbViewA.Caption := 'Name: ' + DataMod.qryEdAssess.FieldByName('AssessName').AsString + ' | Type: ' + DataMod.qryEdAssess.FieldByName('AssessType').AsString + ' | Date: ' + DataMod.qryEdAssess.FieldByName('AssessDate').AsString + ' | Total Marks: ' + DataMod.qryEdAssess.FieldByName('TotalMarks').AsString;
        MainForm.Caption := DataMod.qryEdAssess.FieldByName('AssessName').AsString + ' Information - ' + MainForm.Caption;

        sgAssess.Cells[0,0]:='Surname';
        sgAssess.Cells[1,0]:='Forename';
        sgAssess.Cells[2,0]:='Baseline';
        sgAssess.Cells[3,0]:='Raw Mark';
        sgAssess.Cells[4,0]:='Grade';

        //Use parameter of AssessmentID to open query
        DataMod.qryViewAssess.Close();
        DataMod.qryViewAssess.Parameters.ParamByName('pmID').Value := DataMod.qryEdAssess.FieldByName('AssessmentID').AsString;
        DataMod.qryViewAssess.Open();

        //Fill string grid with qryViewAssess results
        if (DataMod.qryViewAssess.Active) then
        begin
          if (DataMod.qryViewAssess.RecordCount >= 1) then
          begin
            DataMod.qryViewAssess.First;
            sgAssess.RowCount := DataMod.qryViewAssess.RecordCount + 1;
            for iCount := 1 to DataMod.qryViewAssess.RecordCount do
            begin
              sgAssess.Cells[0,iCount]:= DataMod.qryViewAssess.FieldByName('Surname').AsString;
              sgAssess.Cells[1,iCount] := DataMod.qryViewAssess.FieldByName('Forename').AsString;
              sgAssess.Cells[2,iCount] := DataMod.qryViewAssess.FieldByName('Baseline').AsString;
              sgAssess.Cells[3,iCount]:= DataMod.qryViewAssess.FieldByName('RawMark').AsString;
              sgAssess.Cells[4,iCount]:= DataMod.qryViewAssess.FieldByName('Grade').AsString;
              DataMod.qryViewAssess.Next;
            end;
            DataMod.qryEdAssess.Close;
            DataMod.qryViewAssess.Close;
          end
          else
          ShowMessage('There were no assessments to view.');
          DataMod.qryViewStudent.Close;
        end
        else
        ShowMessage('There was an error with our database. Please try again or contact an administrator.');
        DataMod.qryViewAssess.Close;
      end
      else
        ShowMessage('Invalid username or password. Please make sure they are correct or contact an administrator.');
        DataMod.qryEdAssess.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
   ShowMessage('An assessment needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewSCancelClick(Sender: TObject);
begin
// Changes page of PageControl to Main form
  PageControl1.ActivePageIndex := 1;
// Changes size of program window
  MainForm.Width:= 697;
  MainForm.Height:= 200;
  MainForm.Caption := 'Assessment Program';
  lbTut.Caption := 'Tutor:';
  lbGCS.Caption := 'GCSE Average:';
  lbBas.Caption := 'Baseline:';
  lbTar.Caption := 'Target Grade:';
  lbSta.Caption := 'Status:';
  lbEth.Caption := 'Ethnicity:';
  lbBKE.Caption := 'BKSB English:';
  lbBKM.Caption := 'BKSB Maths:';
  lbWUP.Caption := 'Ward Uplift:';
  lbLDS.Caption := 'LDS/SEN:';
  lbLDd.Caption := '';

end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewSEditClick(Sender: TObject);
begin
// Changes page of PageControl to EditStudent form
  PageControl1.ActivePageIndex := 3;
// Changes size of program window
  MainForm.Width := 480;
  MainForm.Height:= 300;
  MainForm.Height:= 200;
  MainForm.Caption := 'Assessment Program';
  lbTut.Caption := 'Tutor:';
  lbGCS.Caption := 'GCSE Average:';
  lbBas.Caption := 'Baseline:';
  lbTar.Caption := 'Target Grade:';
  lbSta.Caption := 'Status:';
  lbEth.Caption := 'Ethnicity:';
  lbBKE.Caption := 'BKSB English:';
  lbBKM.Caption := 'BKSB Maths:';
  lbWUP.Caption := 'Ward Uplift:';
  lbLDS.Caption := 'LDS/SEN:';
  lbLDd.Caption := '';

  btnEditStudent.Click;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnViewStudentClick(Sender: TObject);
var
  iName: integer;
  cName: char;
  sSName: string;
  sFName: string;
  iCount: integer;
begin
  sSName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  sFName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  iName := 0;
  cName := ' ';
// If user has not selected anything
  if cbStudName.ItemIndex <> -1 then
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
    sFName:= Copy(sFName,iName,Length(cbStudName.Items.Strings[cbStudName.ItemIndex]));

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdStudent.Close();

    //Use parameters in SQL to login

    DataMod.qryEdStudent.Parameters.ParamByName('pmESName').Value := sSName;
    DataMod. qryEdStudent.Parameters.ParamByName('pmEFName').Value:= sFName;
    DataMod.qryEdStudent.Open();

    if (DataMod.qryEdStudent.Active) then
    begin
      if (DataMod.qryEdStudent.RecordCount = 1) then
      begin
        // Changes page of PageControl to EditStudent form
        PageControl1.ActivePageIndex := 2;
        // Changes size of program window
        MainForm.Width := 697;
        MainForm.Height:= 453;


        // Use SQL query to find student information from database with student name and fill the edit/combo boxes
        MainForm.Caption := DataMod.qryEdStudent.FieldByName('Forename').AsString + ' ' + DataMod.qryEdStudent.FieldByName('Surname').AsString + ' Information - ' + MainForm.Caption;
        lbTut.Caption := lbTut.Caption + ' ' + DataMod.qryEdStudent.FieldByName('StaffSurname').AsString + ', ' + DataMod.qryEdStudent.FieldByName('StaffForename').AsString;
        lbGCS.Caption := lbGCS.Caption + ' ' + DataMod.qryEdStudent.FieldByName('GCSEAverage').AsString;
        lbBas.Caption := lbBas.Caption + ' ' + DataMod.qryEdStudent.FieldByName('Baseline').AsString;
        lbTar.Caption := lbTar.Caption + ' ' + DataMod.qryEdStudent.FieldByName('TargetGrade').AsString;
        lbSta.Caption := lbSta.Caption + ' ' + DataMod.qryEdStudent.FieldByName('Status').AsString;
        lbEth.Caption := lbEth.Caption + ' ' + DataMod.qryEdStudent.FieldByName('Ethnicity').AsString;
        lbBKE.Caption := lbBKE.Caption + ' ' + DataMod.qryEdStudent.FieldByName('BKSBEnglish').AsString;
        lbBKM.Caption := lbBKM.Caption + ' ' + DataMod.qryEdStudent.FieldByName('BKSBMaths').AsString;
        lbWUP.Caption := lbWUP.Caption + ' ' + DataMod.qryEdStudent.FieldByName('WardUplift').AsString;
        lbLDS.Caption := lbLDS.Caption + ' ' + DataMod.qryEdStudent.FieldByName('LDS/SEN').AsString;
        if lbLDS.Caption = 'LDS/SEN: True' then
        begin
          lbLDd.Caption := 'LDS/SEN Details: ' + DataMod.qryEdStudent.FieldByName('SENDetails').AsString;
        end;

        // Add cell headings to string grid
        sgStudent.Cells[0,0]:= 'Assessment Name';
        sgStudent.Cells[1,0]:= 'Type';
        sgStudent.Cells[2,0]:= 'Raw Mark';
        sgStudent.Cells[3,0]:= 'Total Marks';
        sgStudent.Cells[4,0]:= 'Grade';

        //Use SQL query to find information to insert in table from tblAssessment
        DataMod.qryViewStudent.Close;
        DataMod.qryViewStudent.Parameters.ParamByName('pmID').Value := DataMod.qryEdStudent.FieldByName('StudentID').AsString;
        DataMod.qryViewStudent.Open;

        if (DataMod.qryViewStudent.Active) then
        begin
          if (DataMod.qryViewStudent.RecordCount >= 1) then
          begin
            DataMod.qryViewStudent.First;
            sgStudent.RowCount := DataMod.qryViewStudent.RecordCount + 1;
            for iCount := 1 to DataMod.qryViewStudent.RecordCount do
            begin
              sgStudent.Cells[0,iCount] := DataMod.qryViewStudent.FieldByName('AssessName').AsString;
              sgStudent.Cells[1,iCount] := DataMod.qryViewStudent.FieldByName('AssessType').AsString;
              sgStudent.Cells[2,iCount] := DataMod.qryViewStudent.FieldByName('RawMark').AsString;
              sgStudent.Cells[3,iCount] := DataMod.qryViewStudent.FieldByName('TotalMarks').AsString;
              sgStudent.Cells[4,iCount] := DataMod.qryViewStudent.FieldByName('Grade').AsString;

              DataMod.qryViewStudent.Next;
            end;
            DataMod.qryViewStudent.Close;
            DataMod.qryViewAssess.Close;
          end
          else
          ShowMessage('There were no assessments to view.');
          DataMod.qryViewStudent.Close;
        end
        else
        ShowMessage('There was an error with our database. Please try again or contact an administrator.');
        DataMod.qryViewStudent.Close;
      end
      else
        ShowMessage('Invalid entry. Please make sure this is correct or contact an administrator.');
        DataMod.qryEdStudent.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
    ShowMessage('A student needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.EditStudentAssessment1Click(Sender: TObject);
begin
  if (sgStudent.Row > 0) then
  begin
    // Fill Student and Assessment combo boxes
    EdStAssessForm.FillStudentCombo(sgAssess.Cells[0,sgAssess.Row] + ',  ' + sgAssess.Cells[1,sgAssess.Row]);
    EdStAssessForm.FillAssessmentCombo(cbAssessName.Items.Strings[cbAssessName.ItemIndex]);

    // Lock the combo boxes to not be changed
    EdStAssessForm.cbStName.Enabled := false;
    EdStAssessForm.cbAssName.Enabled := false;
    // Shows until the form is finished and closes, where it continues on with procedure
    EdStAssessForm.ShowModal;
    // When form is closed, cancel and view again (refresh the page)
    btnViewACancel.Click;
    btnViewAssess.Click;
  end
  else
  ShowMessage('There was an error viewing this assessment.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.itNwStAsClick(Sender: TObject);
begin
  if (sgStudent.Row > 0) then
  begin
    // Fill Student and Assessment combo boxes
    EdStAssessForm.FillStudentCombo(cbStudName.Items.Strings[cbStudName.ItemIndex]);
    EdStAssessForm.FillAssessmentCombo('');

    // Unlock both combo boxes so they can both be edited
    EdStAssessForm.cbStName.Enabled := true;
    EdStAssessForm.cbAssName.Enabled := true;
    // Shows until the form is finished and closes, where it continues on with procedure
    EdStAssessForm.ShowModal;
    // When form is closed, cancel and view again (refresh the page)
    btnViewSCancel.Click;
    btnViewStudent.Click;
  end
  else
  ShowMessage('There was an error editing a student');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnCancelClick(Sender: TObject);
begin
// Close the program
  Close();
end;

//-----------------------------------------------------------------------------

procedure TMainForm.FormShow(Sender: TObject);
var
  iPage: integer;

begin
  // Changes size of program window
  MainForm.Width:= 480;
  MainForm.Height:= 200;

  //  Iterate through PageControl to remove visibility of tabs
  for iPage := 0 to PageControl1.PageCount - 1 do
  begin
       PageControl1.Pages[iPage].TabVisible := false;
  end;
  PageControl1.ActivePageIndex := 0;

  // Use SQL query to add staff names to login combo box
  DataMod.qryTeacherNames.Open;
  DataMod.qryTeacherNames.First;
  while not DataMod.qryTeacherNames.Eof do
  begin
    cbTeachName.Items.Add(DataMod.qryTeacherNames.FieldbyName('StaffName').AsString) ;
    DataMod.qryTeacherNames.Next;
  end;

  DataMod.qryTeacherNames.Close;

end;

//-----------------------------------------------------------------------------

procedure TMainForm.itEdStAsClick(Sender: TObject);
begin
  if (sgStudent.Row > 0) then
  begin
    // Fill Student and Assessment combo boxes
    EdStAssessForm.FillStudentCombo(cbStudName.Items.Strings[cbStudName.ItemIndex]);
    EdStAssessForm.FillAssessmentCombo(sgStudent.Cells[0, sgStudent.Row]);

    // Lock the combo boxes to not be changed
    EdStAssessForm.cbStName.Enabled := false;
    EdStAssessForm.cbAssName.Enabled := false;
    //  Shows until the form is finished and closes, where it continues on with procedure
    EdStAssessForm.ShowModal;
    // When form is closed, cancel and view again (refresh the page)
    btnViewSCancel.Click;
    btnViewStudent.Click;
  end
  else
  ShowMessage('There was an error viewing this assessment.');
end;


//-----------------------------------------------------------------------------

procedure TMainForm.NewStudentAssessment1Click(Sender: TObject);
begin
  if (sgStudent.Row > 0) then
  begin
  // Fill Student and Assessment combo boxes
    EdStAssessForm.FillStudentCombo(sgAssess.Cells[0,sgAssess.Row] + ',  ' + sgAssess.Cells[1,sgAssess.Row]);
    EdStAssessForm.FillAssessmentCombo(cbAssessName.Items.Strings[cbAssessName.ItemIndex]);

    // Unlock both combo boxes so they can both be edited
    EdStAssessForm.cbStName.Enabled := true;
    EdStAssessForm.cbAssName.Enabled := true;
    //  Shows until the form is finished and closes, where it continues on with procedure
    EdStAssessForm.ShowModal;
    //  When form is closed, cancel and view again (refresh the page)
    btnViewACancel.Click;
    btnViewAssess.Click;
  end
  else
  ShowMessage('There was an error editing a student');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.sgAssessDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  sCellText : string;
  myRect : TRect;

begin

//if there is more than one row, fill cell contents into string
  if (ARow > 0) then
  begin
    sCellText := sgAssess.Cells[ACol, ARow];

// Compare baseline to grade and change cell colour
    if (sgAssess.Cells[4, ARow] = sgAssess.Cells[2,ARow]) then
      sgAssess.Canvas.Brush.Color := TColor($000D80F2)
    else if (sgAssess.Cells[4, ARow] > sgAssess.Cells[2,ARow]) then
      sgAssess.Canvas.Brush.Color := TColor($FF3333)
    else
      sgAssess.Canvas.Brush.Color := TColor($33CC00);

// Create new larger object
    myRect := Rect;
    myRect.Left := myRect.Left -4;

// Change canvas to Rect size
    sgAssess.Canvas.FillRect(myRect);

// Move text to centre of cell
    myRect := Rect;
    myRect.Left := myRect.Left + 5;
    myRect.Top := myRect.Top + 5;

// Change grid text colour
    sgAssess.Canvas.Font.Color:= clBlack;
    sgAssess.Canvas.TextRect(myRect, sCellText);
  end;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.sgAssessMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
// If right mouse button clicked, pop menu up at mouse button position
  if Button = mbRight then
    with sgAssess.ClienttoScreen(Point(X,Y)) do
      puViewAssess.Popup(X,Y);
end;

//-----------------------------------------------------------------------------

procedure TMainForm.sgStudentDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);

var
  sCellText : string;
  sBaseline : string;
  myRect : TRect;

begin
//if there is more than one row, fill cell contents into string
  if (ARow > 0) then
  begin
    sCellText := sgStudent.Cells[ACol, ARow];

    sBaseline := Copy(lbBas.Caption, (Pos(' ', lbBas.Caption) + 1), 1);

  // Compare baseline to grade and change cell colour
    if (sgStudent.Cells[4, ARow] = sBaseline) then
      sgStudent.Canvas.Brush.Color := TColor($000D80F2)
    else if (sgStudent.Cells[4, ARow] > sBaseline) then
      sgStudent.Canvas.Brush.Color := TColor($FF3333)
    else
      sgStudent.Canvas.Brush.Color := TColor($33CC00);

    // Create new larger object
    myRect := Rect;
    myRect.Left := myRect.Left -4;

    // Change canvas to Rect size
    sgStudent.Canvas.FillRect(myRect);

    // Move text to centre of cell
    myRect := Rect;
    myRect.Left := myRect.Left + 5;
    myRect.Top := myRect.Top + 5;

    // Change grid text colour
    sgStudent.Canvas.Font.Color:= clBlack;
    sgStudent.Canvas.TextRect(myRect, sCellText);
  end;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.sgStudentMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
// If right mouse button clicked, pop menu up at mouse button position
  if Button = mbRight then
    with sgStudent.ClienttoScreen(Point(X,Y)) do
      puViewStudent.Popup(X,Y);
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditACancelClick(Sender: TObject);
begin
// Changes page of PageControl to Main form
  PageControl1.ActivePageIndex := 1;
// Changes size of program window
  MainForm.Width:= 697;
  MainForm.Height:= 200;
// Return caption to original text
  MainForm.Caption:= 'Assessment Program';
  edEditAName.Clear;
  cmbEditAType.ItemIndex := -1;
  edEditADate.Clear;
  edEditATotal.Clear;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditADoneClick(Sender: TObject);
begin
 if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdAssess.Close;
    //Use parameters in SQL to login
    DataMod.qryEdAssess.Parameters.ParamByName('pmEAName').Value := edEditAName.Text;
    DataMod.qryEdAssess.Open;

    if (DataMod.qryEdAssess.Active) then
    begin
      if (DataMod.qryEdAssess.RecordCount = 1) then
      begin
// Use SQL UPDATE function to update an existing record in tblAssessTasks
      DataMod.qryUpdAssess.Close;
      DataMod.qryUpdAssess.Parameters.ParamByName('pmAID').Value := DataMod.qryEdAssess.FieldByName('AssessmentID').AsInteger;
      DataMod.qryUpdAssess.Parameters.ParamByName('pmAName').Value := edEditAName.Text;

      DataMod.qryUpdAssess.Parameters.ParamByName('pmAType').Value := cmbEditAType.Text;

      DataMod.qryUpdAssess.Parameters.ParamByName('pmADate').Value := edEditADate.Text;
      DataMod.qryUpdAssess.Parameters.ParamByName('pmAMarks').Value := edEditATotal.Text;
      DataMod.qryUpdAssess.ExecSQL;

      DataMod.qryUpdAssess.Close;
      DataMod.qryEdAssess.Close;

// Changes page of PageControl to Main form
      PageControl1.ActivePageIndex := 1;
// Changes size of program window
      MainForm.Width:= 697;
      MainForm.Height:= 200;
// Return caption to original text
      MainForm.Caption:= 'Assessment Program';
      end
      else
      begin
// Use SQL INSERT function to insert a new record into tblAssessTasks
      DataMod.qryInsAssess.Close;
      DataMod.qryInsAssess.Parameters.ParamByName('pmAName').Value := edEditAName.Text;

      DataMod.qryInsAssess.Parameters.ParamByName('pmAType').Value := cmbEditAType.Text;

      DataMod.qryInsAssess.Parameters.ParamByName('pmADate').Value := edEditADate.Text;
      DataMod.qryInsAssess.Parameters.ParamByName('pmAMarks').Value := edEditATotal.Text;
      DataMod.qryInsAssess.ExecSQL;

      DataMod.qryInsAssess.Close;
      DataMod.qryEdAssess.Close;

      cbAssessName.Items.Clear;
      DataMod.qryAssessmentNames.Open;
      DataMod.qryAssessmentNames.First;
        while not DataMod.qryAssessmentNames.Eof do
         begin
          cbAssessName.Items.Add(DataMod.qryAssessmentNames.FieldbyName('AssessName').AsString) ;
          DataMod.qryAssessmentNames.Next;
         end;
      DataMod.qryAssessmentNames.Close;
      DataMod.qryLogon.Close;

// Changes page of PageControl to Main form
      PageControl1.ActivePageIndex := 1;
// Changes size of program window
      MainForm.Width:= 697;
      MainForm.Height:= 200;
// Return caption to original text
      MainForm.Caption:= 'Assessment Program';
      end;
    end
    else
    ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditAssessClick(Sender: TObject);
begin
if cbAssessName.ItemIndex <> -1 then
  begin
  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdAssess.Close();
    //Use parameters in SQL to login
    DataMod.qryEdAssess.Parameters.ParamByName('pmEAName').Value := cbAssessName.Items.Strings[cbAssessName.ItemIndex];
    DataMod.qryEdAssess.Open();

    if (DataMod.qryEdAssess.Active) then
    begin
      if (DataMod.qryEdAssess.RecordCount = 1) then
      begin
        // Changes page of PageControl to EditAssess form
          PageControl1.ActivePageIndex := 5;
        // Changes size of program window
          MainForm.Width := 320;
          MainForm.Height:= 230;
          MainForm.Caption:= 'Edit Assessment - ' + MainForm.Caption;
          edEditAName.Text:= DataMod.qryEdAssess.FieldByName('AssessName').AsString;
          cmbEditAType.Text:= DataMod.qryEdAssess.FieldByName('AssessType').AsString;
          edEditADate.Text:= DataMod.qryEdAssess.FieldByName('AssessDate').AsString;
          edEditATotal.Text:= DataMod.qryEdAssess.FieldByName('TotalMarks').AsString;
      DataMod.qryTeacherNames.Close;
      end
      else
        ShowMessage('Invalid username or password. Please make sure they are correct or contact an administrator.');
        DataMod.qryEdAssess.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
  ShowMessage('An assessment needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditSCancelClick(Sender: TObject);
begin
// Changes page of PageControl to Main form
  PageControl1.ActivePageIndex := 1;
// Changes size of program window
  MainForm.Width:= 697;
  MainForm.Height:= 200;
  MainForm.Caption:= 'Assessment Program';
// Clear all edit and combo boxes if anything contained
  edStudSurn.Clear;
  edStudFore.Clear;
  edGCSE.Clear;
  meLDd.Clear;
  cbBaseline.ItemIndex := -1;
  cbTargetGrade.ItemIndex := -1;
  cbStatus.ItemIndex := -1;
  cbEthnicity.ItemIndex := -1;
  cbBKSBEng.ItemIndex := -1;
  cbBKSBMat.ItemIndex := -1;
  cbWardUpl.ItemIndex := -1;
  cbLDS.ItemIndex := -1;
  edEmail.Clear;
  cbTutor.ItemIndex:= -1;
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditSDoneClick(Sender: TObject);
var
iStaffID: integer;
begin
iStaffID := 0;
 if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdStudent.Close;

    //Use parameters in SQL to login

    DataMod.qryEdStudent.Parameters.ParamByName('pmESName').Value := edStudSurn.Text;
    DataMod.qryEdStudent.Parameters.ParamByName('pmEFName').Value:= edStudFore.Text;
    DataMod.qryEdStudent.Open;

    if (DataMod.qryEdStudent.Active) then
    begin
      if (DataMod.qryEdStudent.RecordCount = 1) then
      begin
// Use SQL UPDATE function to update an existing record in the database
      DataMod.qryUpdStudent.Close;

      DataMod.qryUpdStudent.Parameters.ParamByName('pmSID').Value := DataMod.qryEdStudent.FieldByName('StudentID').AsInteger;

      DataMod.qryUpdStudent.Parameters.ParamByName('pmSName').Value := edStudSurn.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmFName').Value := edStudFore.Text;

      iStaffID := cbTutor.ItemIndex + 1;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmStaffID').Value := iStaffID;

      DataMod.qryUpdStudent.Parameters.ParamByName('pmGCSE').Value := edGCSE.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmBase').Value := cbBaseline.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmTarg').Value := cbTargetGrade.Text;

      if (cbStatus.Text = 'True') then
        DataMod.qryUpdStudent.Parameters.ParamByName('pmStat').Value := 1
      else
        DataMod.qryUpdStudent.Parameters.ParamByName('pmStat').Value := 0;

      DataMod.qryUpdStudent.Parameters.ParamByName('pmEthn').Value := cbEthnicity.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmEmai').Value := edEmail.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmBKSe').Value := cbBKSBEng.Text;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmBKSm').Value := cbBKSBMat.Text;

      if (cbWardUpl.Text = 'True') then
        DataMod.qryUpdStudent.Parameters.ParamByName('pmWU').Value := 1
      else
        DataMod.qryUpdStudent.Parameters.ParamByName('pmWU').Value := 0;

      if cbLDS.Text = 'True' then
        DataMod.qryUpdStudent.Parameters.ParamByName('pmLDS').Value := 1
      else
        DataMod.qryUpdStudent.Parameters.ParamByName('pmLDS').Value := 0;

      DataMod.qryUpdStudent.Parameters.ParamByName('pmLDd').Value := meLDd.Text;
      DataMod.qryUpdStudent.ExecSQL;

      DataMod.qryUpdStudent.Close;
      DataMod.qryEdStudent.Close;

// Changes page of PageControl to Main form
      PageControl1.ActivePageIndex := 1;
// Changes size of program window
      MainForm.Width:= 697;
      MainForm.Height:= 200;
      MainForm.Caption:= 'Assessment Program';
      cbTutor.Items.Clear;
      end
      else
      begin
// Use SQL INSERT function to insert record in database
      DataMod.qryInsStudent.Close;
      DataMod.qryInsStudent.Parameters.ParamByName('pmSName').Value := edStudSurn.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmFName').Value := edStudFore.Text;

      iStaffID := cbTutor.ItemIndex + 1;
      DataMod.qryUpdStudent.Parameters.ParamByName('pmStaffID').Value := iStaffID;

      DataMod.qryInsStudent.Parameters.ParamByName('pmGCSE').Value := edGCSE.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmBase').Value := cbBaseline.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmTarg').Value := cbTargetGrade.Text;

      if (cbStatus.Text = 'True') then
        DataMod.qryInsStudent.Parameters.ParamByName('pmStat').Value := 1
      else
        DataMod.qryInsStudent.Parameters.ParamByName('pmStat').Value := 0;

      DataMod.qryInsStudent.Parameters.ParamByName('pmEthn').Value := cbEthnicity.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmEmai').Value := edEmail.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmBKSe').Value := cbBKSBEng.Text;
      DataMod.qryInsStudent.Parameters.ParamByName('pmBKSm').Value := cbBKSBMat.Text;

      if cbWardUpl.Text = 'True' then
        DataMod.qryInsStudent.Parameters.ParamByName('pmWU').Value := 1
      else
        DataMod.qryInsStudent.Parameters.ParamByName('pmWU').Value := 0;

      if cbLDS.Text = 'True' then
        DataMod.qryInsStudent.Parameters.ParamByName('pmLDS').Value := 1
      else
        DataMod.qryInsStudent.Parameters.ParamByName('pmLDS').Value := 0;

      DataMod.qryInsStudent.Parameters.ParamByName('pmLDd').Value := meLDd.Text;
      DataMod.qryInsStudent.ExecSQL;

      DataMod.qryInsStudent.Close;
      DataMod.qryEdStudent.Close;

// Changes page of PageControl to Main form
      PageControl1.ActivePageIndex := 1;
// Changes size of program window
      cbStudName.Items.Clear;
      cbAssessName.Items.Clear;
      btnLogin.Click;
      end;
    end
    else
    ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnEditStudentClick(Sender: TObject);
var
  iName: integer;
  cName: char;
  sSName: string;
  sFName: string;
begin
  sSName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  sFName:= cbStudName.Items.Strings[cbStudName.ItemIndex];
  iName := 0;
  cName := ' ';
// If user has not selected anything
  if cbStudName.ItemIndex <> -1 then
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
    sFName:= Copy(sFName,iName,Length(cbStudName.Items.Strings[cbStudName.ItemIndex]));

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryEdStudent.Close();

    //Use parameters in SQL to login

    DataMod.qryEdStudent.Parameters.ParamByName('pmESName').Value := sSName;
    DataMod.qryEdStudent.Parameters.ParamByName('pmEFName').Value := sFName;
    DataMod.qryEdStudent.Open();

    if (DataMod.qryEdStudent.Active) then
    begin
      if (DataMod.qryEdStudent.RecordCount = 1) then
      begin
    // Changes page of PageControl to EditStudent form
      PageControl1.ActivePageIndex := 3;
    // Changes size of program window
      MainForm.Width := 480;
      MainForm.Height:= 300;

      DataMod.qryTeacherNames.Open;
      DataMod.qryTeacherNames.First;
      //Use SQL to add staff names to Tutor combo box on EditStudent page
      while not DataMod.qryTeacherNames.Eof do
      begin
        cbTutor.Items.Add(DataMod.qryTeacherNames.FieldByName('StaffName').AsString) ;
        DataMod.qryTeacherNames.Next;
      end;
      DataMod.qryTeacherNames.Close;

      //Add student details into boxes
      MainForm.Caption := 'Edit Student - ' + MainForm.Caption;
      edStudSurn.Text := DataMod.qryEdStudent.FieldByName('Surname').AsString;
      edStudFore.Text := DataMod.qryEdStudent.FieldByName('Forename').AsString;
      cbTutor.Text := DataMod.qryEdStudent.FieldByName('StaffSurname').AsString + ',  ' +  DataMod.qryEdStudent.FieldByName('StaffForename').AsString;
      edGCSE.Text := DataMod.qryEdStudent.FieldByName('GCSEAverage').AsString;
      cbBaseline.Text := DataMod.qryEdStudent.FieldByName('Baseline').AsString;
      cbTargetGrade.Text :=  DataMod.qryEdStudent.FieldByName('TargetGrade').AsString;
      cbStatus.Text := DataMod.qryEdStudent.FieldByName('Status').AsString;
      cbEthnicity.Text := DataMod.qryEdStudent.FieldByName('Ethnicity').AsString;
      edEmail.Text := DataMod.qryEdStudent.FieldByName('EmailAddr').AsString;
      cbBKSBEng.Text := DataMod.qryEdStudent.FieldByName('BKSBEnglish').AsString;
      cbBKSBMat.Text := DataMod.qryEdStudent.FieldByName('BKSBMaths').AsString;
      cbWardUpl.Text := DataMod.qryEdStudent.FieldByName('WardUplift').AsString;
      cbLDS.Text := DataMod.qryEdStudent.FieldByName('LDS/SEN').AsString;
      meLDd.Text := DataMod.qryEdStudent.FieldByName('SENDetails').AsString;
      DataMod.qryEdStudent.Close;

      end
      else
        ShowMessage('There was an error with our database. Please try again or contact an administrator.');
        DataMod.qryEdStudent.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');
  end
  else
  ShowMessage('A student needs to be selected to continue.');
end;

//-----------------------------------------------------------------------------

procedure TMainForm.btnLoginClick(Sender: TObject);
var
  iName: integer;
  cName: char;
  sName: string;
begin
  iName := 0;
  sName:= cbTeachName.Items.Strings[cbTeachName.ItemIndex];
  cName := ' ';

// Create string with only surname from combo box contents
  while cName <> ',' do
  begin
    iName:= iName + 1;
    cName:= sName[iName];
  end;

  iName:= iName-1;
  sName:= Copy(sName,1,iName);

  if (DataMod.dbConn.Connected) then
  begin
    DataMod.qryLogon.Close();

    //Use parameters in SQL to login
    DataMod.qryLogon.Parameters.ParamByName('pmSName').Value := sName;
    DataMod.qryLogon.Parameters.ParamByName('pmPWord').Value := edPass.Text;
    DataMod.qryLogon.Open();

    if (DataMod.qryLogon.Active) then
    begin
      if (DataMod.qryLogon.RecordCount = 1) then
      begin
        PageControl1.ActivePageIndex:= 1;
        MainForm.Width := 697;
        MainForm.Height:= 200;
      //Use SQL to fill student name combo box
        DataMod.qryStudentNames.Open;
        DataMod.qryStudentNames.First;
          while not DataMod.qryStudentNames.Eof do
           begin
            cbStudName.Items.Add(DataMod.qryStudentNames.FieldbyName('StudentName').AsString) ;
            DataMod.qryStudentNames.Next;
           end;
        DataMod.qryStudentNames.Close;
        // Use SQL to fill assessment name combo box
        DataMod.qryAssessmentNames.Open;
        DataMod.qryAssessmentNames.First;
          while not DataMod.qryAssessmentNames.Eof do
           begin
            cbAssessName.Items.Add(DataMod.qryAssessmentNames.FieldbyName('AssessName').AsString) ;
            DataMod.qryAssessmentNames.Next;
           end;
        DataMod.qryAssessmentNames.Close;
        DataMod.qryLogon.Close;
      end
      else
        ShowMessage('Invalid username or password. Please make sure they are correct or contact an administrator.');
        DataMod.qryLogon.Close();
    end
    else
      ShowMessage('There was an error with our database. Please try again or contact an administrator.');
  end
  else
    ShowMessage('No database connection found. Please try again or contact an administrator.');

end;

//-----------------------------------------------------------------------------

end.
