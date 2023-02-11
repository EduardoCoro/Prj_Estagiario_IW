 program Projt_estudos;

uses
  FastMM4,
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  Padrao in '..\Source\Padrao\Padrao.pas' {Tpadrao: TIWAppForm},
  uServerController in '..\Source\Controller\uServerController.pas' {IWServerController: TIWServerControllerBase},
  uUserSessionUnit in '..\Source\Controller\uUserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Login in '..\Source\Page\Login.pas' {TLogin: TIWAppForm},
  Template.StarAdmin in '..\Libary\Template.StarAdmin.pas',
  SweetAlert2 in '..\Libary\SweetAlert2.pas',
  uFrmIndex in '..\Source\Page\uFrmIndex.pas' {FrmIndex: TIWAppForm},
  Projt_estudos.App in '..\Libary\Projt_estudos.App.pas',
  MenuApp in '..\Libary\MenuApp.pas',
  App in '..\Const\App.pas',
  ComponentsWeb in '..\Libary\ComponentsWeb.pas',
  DataTables in '..\Libary\DataTables.pas',
  Callabacks in '..\Libary\Callabacks.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
