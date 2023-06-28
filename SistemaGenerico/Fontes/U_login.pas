unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus,U_splash, Vcl.Buttons, Vcl.Mask, Data.DB;

type
  Tfrm_Login = class(TForm)
    PanelPrincipal: TPanel;
    BevelLogo: TBevel;
    ImageLogo: TImage;
    PanelLogin: TPanel;
    EditSenha: TEdit;
    LabelLogin: TLabel;
    LabelSenha: TLabel;
    LabelUsuario: TLabel;
    PanelButtonEntrar: TPanel;
    ButtonEntrar: TSpeedButton;
    ShapeEditSenha: TShape;
    ShapeEditUsuario: TShape;
    EditUsuario: TEdit;
    procedure ButtonEntrarClick(Sender: TObject);
    procedure EditUsuarioKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
    nomeFuncionario: string;
  end;

var
  frm_Login: Tfrm_Login;

implementation

{$R *.dfm}

uses Funcoes, U_DM;

procedure Tfrm_Login.ButtonEntrarClick(Sender: TObject);
var
  usuario, senha: string;
begin
  usuario := EditUsuario.Text;
  senha := EditSenha.Text;

  if DM.ChecarCredenciais(usuario, senha) then
  begin
    nomeFuncionario := usuario;
    frm_Login.Visible := False;
    frm_splash.Show;
  end
  else
  begin
    MessageBox(Handle, 'Usuário e/ou senha inválidos.', 'Erro!', MB_OK or MB_ICONERROR);
    LimparControles(Self);
    EditUsuario.SetFocus;
  end;
end;

procedure Tfrm_Login.EditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirString(Key);
end;

end.
