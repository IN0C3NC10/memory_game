program JogoMemoria;

uses
  Vcl.Forms,
  untJogoMem�ria in 'untJogoMem�ria.pas' {frmJogo},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TfrmJogo, frmJogo);
  Application.Run;
end.