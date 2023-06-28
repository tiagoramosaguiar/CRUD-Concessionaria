program SistemaGenericoDeCadastro;

uses
  Vcl.Forms,
  Funcoes in 'Fontes\Funcoes.pas' {Funcoes},
  U_login in 'Fontes\U_login.pas' {frm_Login},
  U_Splash in 'Fontes\U_Splash.pas' {frm_Splash},
  U_Menu in 'Fontes\U_Menu.pas' {Frm_menu},
  U_DM in 'Fontes\U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Concessionária';
  Application.CreateForm(Tfrm_Login, frm_Login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_Splash, frm_Splash);
  Application.CreateForm(TFrm_menu, Frm_menu);
  Application.Run;
end.
