unit Login;

interface

uses
  SweetAlert2,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, IWCompButton, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWHTMLTag;

type
  TTLogin = class(TTpadrao)
    edUsuario: TIWEdit;
    edSenha: TIWEdit;
    BTNLOGIN: TIWButton;
    btnRecuperar: TIWButton;
    procedure BTNLOGINAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnRecuperarAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edUsuarioHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edSenhaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TLogin: TTLogin;

implementation


{$R *.dfm}

uses uFrmIndex, uServerController;

procedure TTLogin.BTNLOGINAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  inherited;
  if edUsuario.Text = '' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalError('Erro!','Insere o Usu�rio!'));
    Exit;
  end;

  if edSenha.Text = '' then
  begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute(swalError('Erro!','Insere a Senha!'));
    Exit;
  end;

  UserSession.UserId := 1;
  UserSession.UserLogado := edUsuario.Text;

  self.Release;
  FrmIndex := TFrmIndex.Create(self);
  FrmIndex.Show;

    //WebApplication.CallBackResponse.AddJavaScriptToExecute(swalSuccess('Funcionou','Clicou Login :' + edUsuario.Text));
end;

procedure TTLogin.btnRecuperarAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  WebApplication.ShowMessage('Clicou!');
end;

procedure TTLogin.edSenhaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="*********"');
end;

procedure TTLogin.edUsuarioHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="Informe o usu�rio"');
end;

initialization
  TTLogin.SetAsMainForm;

end.
