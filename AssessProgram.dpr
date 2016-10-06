program AssessProgram;

uses
  Vcl.Forms,
  Main in 'Main\Main.pas' {MainForm},
  DMod in 'DMod\DMod.pas' {DataMod: TDataModule},
  RemStudent in 'RemStudent\RemStudent.pas' {RemStudentForm},
  RemAssess in 'RemAssess\RemAssess.pas' {RemAssessForm},
  EdStAssess in 'EdStAssess\EdStAssess.pas' {EdStAssessForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataMod, DataMod);
  Application.CreateForm(TRemStudentForm, RemStudentForm);
  Application.CreateForm(TRemAssessForm, RemAssessForm);
  Application.CreateForm(TEdStAssessForm, EdStAssessForm);
  Application.Run;
end.
