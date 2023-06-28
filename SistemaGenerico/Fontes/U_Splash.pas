unit U_Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB;

type
  Tfrm_Splash = class(TForm)
    ImageLogo: TImage;
    PanelProgressBar2: TPanel;
    PanelProgressBar1: TPanel;
    ProgressBar1: TProgressBar;
    TimerCaption: TTimer;
    TimerProgressBar: TTimer;
    procedure TimerProgressBarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerCaptionTimer(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  frm_Splash: Tfrm_Splash;

implementation

{$R *.dfm}

uses U_Menu, U_DM;


procedure Tfrm_Splash.FormShow(Sender: TObject);
begin
  PanelProgressBar1.Color := $3424f4;
  PanelProgressBar1.Width := 0;
  ProgressBar1.Position := 0;
  TimerProgressBar.Enabled := true;
  TimerCaption.Enabled := true;
end;

procedure Tfrm_Splash.TimerCaptionTimer(Sender: TObject);
var
  CaptionAtual: String;
begin
  CaptionAtual := Caption;

  if CaptionAtual = 'Carregando.' then
    Caption := 'Carregando..'
  else if CaptionAtual = 'Carregando..' then
    Caption := 'Carregando...'
  else if CaptionAtual = 'Carregando...' then
    Caption := 'Carregando.';
end;

procedure Tfrm_Splash.TimerProgressBarTimer(Sender: TObject);
begin
  PanelProgressBar1.Width := PanelProgressBar1.Width + 3;
  ProgressBar1.Position := ProgressBar1.Position + 1;
  if {ProgressBar1.Position = 100} PanelProgressBar1.Width = PanelProgressBar2.Width then
    begin
      frm_menu.Show;
      ProgressBar1.Position := 0;
      PanelProgressBar1.Width := 0 ;
      TimerProgressBar.Enabled := false;
      TimerCaption.Enabled := false;
      frm_splash.Close;
    end;
end;

end.
