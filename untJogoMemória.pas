unit untJogoMemória;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  TfrmJogo = class(TForm)
    imgMystic1: TImage;
    imgWar1: TImage;
    imgTerror2: TImage;
    imgMachi2: TImage;
    imgWar2: TImage;
    imgMarauder1: TImage;
    imgSlaughter1: TImage;
    imgDark2: TImage;
    imgOutlaw1: TImage;
    imgMachi1: TImage;
    imgSlaughter2: TImage;
    imgOutlaw2: TImage;
    imgMarauder2: TImage;
    imgAtroz2: TImage;
    imgMystic2: TImage;
    imgTerror1: TImage;
    imgAtroz1: TImage;
    imgBackground: TImage;
    imgMystic1I: TImage;
    imgDark1: TImage;
    imgWar1I: TImage;
    imgDark1I: TImage;
    imgTerror1I: TImage;
    imgAtroz2I: TImage;
    imgOutlaw1I: TImage;
    imgTerror2I: TImage;
    imgSlaughter1I: TImage;
    imgMarauder1I: TImage;
    imgMachi2I: TImage;
    imgDark2I: TImage;
    imgAtroz1I: TImage;
    imgMystic2I: TImage;
    imgSlaughter2I: TImage;
    imgWar2I: TImage;
    imgMachi1I: TImage;
    imgMarauder2I: TImage;
    imgOutlaw2I: TImage;
    horinha: TTimer;

    procedure FormCreate(Sender: TObject);
    procedure horinhaTimer(Sender: TObject);
    procedure DesabilitarImagens;
    procedure HabilitarImagens;
    procedure Continuar;
    procedure LimparTela;
    procedure imgWar1IClick(Sender: TObject);
    procedure imgWar2IClick(Sender: TObject);
    procedure imgDark1IClick(Sender: TObject);
    procedure imgDark2IClick(Sender: TObject);
    procedure imgMystic1IClick(Sender: TObject);
    procedure imgMystic2IClick(Sender: TObject);
    procedure imgAtroz1IClick(Sender: TObject);
    procedure imgAtroz2IClick(Sender: TObject);
    procedure imgMachi1IClick(Sender: TObject);
    procedure imgMachi2IClick(Sender: TObject);
    procedure imgTerror1IClick(Sender: TObject);
    procedure imgTerror2IClick(Sender: TObject);
    procedure imgMarauder1IClick(Sender: TObject);
    procedure imgMarauder2IClick(Sender: TObject);
    procedure imgOutlaw1IClick(Sender: TObject);
    procedure imgOutlaw2IClick(Sender: TObject);
    procedure imgSlaughter1IClick(Sender: TObject);
    procedure imgSlaughter2IClick(Sender: TObject);
    procedure imgBackgroundClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJogo: TfrmJogo;
  limite, npares: integer;
  vnome1, vnome2, carta: string;
  aberta, Completo: boolean;
  // se a img esta aberta ou fechada
  status: boolean;

implementation

{$R *.dfm}

// OnCreate
procedure TfrmJogo.FormCreate(Sender: TObject);
begin
  carta := '';
  limite := 0;
  npares := 9;
  aberta := false;
  DoubleBuffered := True; // Não piscar a imagens
end;

// TIMER
procedure TfrmJogo.horinhaTimer(Sender: TObject);
begin
  // vnome1 = 1
  if vnome1 = 'Tribo dos Atrozes' then
  begin
    imgAtroz1I.Visible := True;
    imgAtroz1.Visible := false;
  end;

  if vnome1 = 'Tribo Escura' then
  begin
    imgDark1I.Visible := True;
    imgDark1.Visible := false;
  end;

  if vnome1 = 'Tribo Maquinal' then
  begin
    imgMachi1I.Visible := True;
    imgMachi1.Visible := false;
  end;

  if vnome1 = 'Tribo dos Saqueadores' then
  begin
    imgMarauder1I.Visible := True;
    imgMarauder1.Visible := false;
  end;

  if vnome1 = 'Tribo dos Misticos' then
  begin
    imgMystic1I.Visible := True;
    imgMystic1.Visible := false;
  end;

  if vnome1 = 'Tribo dos Foras da Lei' then
  begin
    imgOutlaw1I.Visible := True;
    imgOutlaw1.Visible := false;
  end;

  if vnome1 = 'Tribo da Matança' then
  begin
    imgSlaughter1I.Visible := True;
    imgSlaughter1.Visible := false;
  end;

  if vnome1 = 'Tribo do Terror' then
  begin
    imgTerror1I.Visible := True;
    imgTerror1.Visible := false;
  end;

  if vnome1 = 'Tribo dos Senhores da Guerra' then
  begin
    imgWar1I.Visible := True;
    imgWar1.Visible := false;
  end;

  // vnome2 = 1
  if vnome2 = 'Tribo dos Atrozes' then
  begin
    imgAtroz1I.Visible := True;
    imgAtroz1.Visible := false;
  end;

  if vnome2 = 'Tribo Escura' then
  begin
    imgDark1I.Visible := True;
    imgDark1.Visible := false;
  end;

  if vnome2 = 'Tribo Maquinal' then
  begin
    imgMachi1I.Visible := True;
    imgMachi1.Visible := false;
  end;

  if vnome2 = 'Tribo dos Saqueadores' then
  begin
    imgMarauder1I.Visible := True;
    imgMarauder1.Visible := false;
  end;

  if vnome2 = 'Tribo dos Misticos' then
  begin
    imgMystic1I.Visible := True;
    imgMystic1.Visible := false;
  end;

  if vnome2 = 'Tribo dos Foras da Lei' then
  begin
    imgOutlaw1I.Visible := True;
    imgOutlaw1.Visible := false;
  end;

  if vnome2 = 'Tribo da Matança' then
  begin
    imgSlaughter1I.Visible := True;
    imgSlaughter1.Visible := false;
  end;

  if vnome2 = 'Tribo do Terror' then
  begin
    imgTerror1I.Visible := True;
    imgTerror1.Visible := false;
  end;

  if vnome2 = 'Tribo dos Senhores da Guerra' then
  begin
    imgWar1I.Visible := True;
    imgWar1.Visible := false;
  end;

  // vnome2 = 2
  if vnome2 = 'Tribo dos Atrozes' then
  begin
    imgAtroz2I.Visible := True;
    imgAtroz2.Visible := false;
  end;

  if vnome2 = 'Tribo Escura' then
  begin
    imgDark2I.Visible := True;
    imgDark2.Visible := false;
  end;

  if vnome2 = 'Tribo Maquinal' then
  begin
    imgMachi2I.Visible := True;
    imgMachi2.Visible := false;
  end;

  if vnome2 = 'Tribo dos Saqueadores' then
  begin
    imgMarauder2I.Visible := True;
    imgMarauder2.Visible := false;
  end;

  if vnome2 = 'Tribo dos Misticos' then
  begin
    imgMystic2I.Visible := True;
    imgMystic2.Visible := false;
  end;

  if vnome2 = 'Tribo dos Foras da Lei' then
  begin
    imgOutlaw2I.Visible := True;
    imgOutlaw2.Visible := false;
  end;

  if vnome2 = 'Tribo da Matança' then
  begin
    imgSlaughter2I.Visible := True;
    imgSlaughter2.Visible := false;
  end;

  if vnome2 = 'Tribo do Terror' then
  begin
    imgTerror2I.Visible := True;
    imgTerror2.Visible := false;
  end;

  if vnome2 = 'Tribo dos Senhores da Guerra' then
  begin
    imgWar2I.Visible := True;
    imgWar2.Visible := false;
  end;

  // some as cartas
  if vnome1 = 'Tribo dos Atrozes' then // se der errado
  begin
    imgAtroz2.Visible := false;
    imgAtroz2I.Visible := True;
    if vnome1 = vnome2 then // qdo as 2 forem certas ocultar as interrogações
    begin
      imgAtroz1I.Visible := false;
      imgAtroz2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo Escura' then
  begin
    imgDark2.Visible := false;
    imgDark2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgDark1I.Visible := false;
      imgDark2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo Maquinal' then
  begin
    imgMachi2.Visible := false;
    imgMachi2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgMachi1I.Visible := false;
      imgMachi2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo dos Saqueadores' then
  begin
    imgMarauder2.Visible := false;
    imgMarauder2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgMarauder1I.Visible := false;
      imgMarauder2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo dos Misticos' then
  begin
    imgMystic2.Visible := false;
    imgMystic2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgMystic1I.Visible := false;
      imgMystic2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo dos Foras da Lei' then
  begin
    imgOutlaw2.Visible := false;
    imgOutlaw2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgOutlaw1I.Visible := false;
      imgOutlaw2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo da Matança' then
  begin
    imgSlaughter2.Visible := false;
    imgSlaughter2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgSlaughter1I.Visible := false;
      imgSlaughter2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo do Terror' then
  begin
    imgTerror2.Visible := false;
    imgTerror2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgTerror1I.Visible := false;
      imgTerror2I.Visible := false;
    end;
  end;

  if vnome1 = 'Tribo dos Senhores da Guerra' then
  begin
    imgWar2.Visible := false;
    imgWar2I.Visible := True;
    if vnome1 = vnome2 then
    begin
      imgWar1I.Visible := false;
      imgWar2I.Visible := false;
    end;
  end;
  aberta:=FALSE;
  vnome1:='';
  vnome2:='';
  horinha.Enabled:=false;
  limite:=0;
  HabilitarImagens;
  if npares=0 then
  begin
    Continuar;
  end;
end;


// ATROZ1
procedure TfrmJogo.imgAtroz1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgAtroz1I.Visible := false;
    imgAtroz1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Atrozes';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Atrozes') then
    begin
      showmessage('Começa caçada');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Atrozes') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Atrozes';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// ATROZ2
procedure TfrmJogo.imgAtroz2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgAtroz2I.Visible := false;
    imgAtroz2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Atrozes';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Atrozes') then
    begin
      showmessage('Começa caçada');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Atrozes') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Atrozes';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


procedure TfrmJogo.imgBackgroundClick(Sender: TObject);
begin

end;

// ESCURA1
procedure TfrmJogo.imgDark1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgDark1I.Visible := false;
    imgDark1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo Escura';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo Escura') then
    begin
      showmessage('Aceite sua escuridão ao nosso lado');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo Escura') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo Escura';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// ESCURA2
procedure TfrmJogo.imgDark2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgDark2I.Visible := false;
    imgDark2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo Escura';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo Escura') then
    begin
      showmessage('Aceite nossa escuridão ao nosso lado');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo Escura') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo Escura';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// MAQUINAL1
procedure TfrmJogo.imgMachi1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMachi1I.Visible := false;
    imgMachi1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo Maquinal';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo Maquinal') then
    begin
      showmessage('Tudo para a grande máquina');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo Maquinal') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo Maquinal';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// MAQUINAL2
procedure TfrmJogo.imgMachi2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMachi2I.Visible := false;
    imgMachi2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo Maquinal';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo Maquinal') then
    begin
      showmessage('Tudo para a grande maquina');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo Maquinal') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo Maquinal';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// SAQUEADORES1
procedure TfrmJogo.imgMarauder1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMarauder1I.Visible := false;
    imgMarauder1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Saqueadores';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Saqueadores') then
    begin
      showmessage('Hora de ser preso');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Saqueadores') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Saqueadores';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// SAQUEADORES2
procedure TfrmJogo.imgMarauder2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMarauder2I.Visible := false;
    imgMarauder2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Saqueadores';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Saqueadores') then
    begin
      showmessage('Hora de ser preso');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Saqueadores') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Saqueadores';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// MISTICOS1
procedure TfrmJogo.imgMystic1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMystic1I.Visible := false;
    imgMystic1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Misticos';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Misticos') then
    begin
      showmessage('Bem vindo ao nosso culto');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Misticos') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Misticos';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// MISTICOS2
procedure TfrmJogo.imgMystic2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgMystic2I.Visible := false;
    imgMystic2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Misticos';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Misticos') then
    begin
      showmessage('Bem vindo ao nosso culto');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Misticos') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Misticos';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// OUTLAW1
procedure TfrmJogo.imgOutlaw1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgOutlaw1I.Visible := false;
    imgOutlaw1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Foras da Lei';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Foras da Lei') then
    begin
      showmessage('Hora de ser preso');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Foras da Lei') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Foras da Lei';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// OUTLAW2
procedure TfrmJogo.imgOutlaw2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgOutlaw2I.Visible := false;
    imgOutlaw2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Foras da Lei';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Foras da Lei') then
    begin
      showmessage('Hora de ser preso');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Foras da Lei') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Foras da Lei';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// MATANÇA1
procedure TfrmJogo.imgSlaughter1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgSlaughter1I.Visible := false;
    imgSlaughter1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo da Matança';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo da Matança') then
    begin
      showmessage('Busquem mais sangue');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo da Matança') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo da Matança';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

//MATANÇA2
procedure TfrmJogo.imgSlaughter2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgSlaughter2I.Visible := false;
    imgSlaughter2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo da Matança';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo da Matança') then
    begin
      showmessage('Busquem mais sangue');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo da Matança') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo da Matança';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// TERROR1
procedure TfrmJogo.imgTerror1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgTerror1I.Visible := false;
    imgTerror1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo do Terror';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo do Terror') then
    begin
      showmessage('Que se inicie o sofrimento');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo do Terror') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo do Terror';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

//TERROR2
procedure TfrmJogo.imgTerror2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgTerror2I.Visible := false;
    imgTerror2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo do Terror';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo do Terror') then
    begin
      showmessage('Que se inicie o sofrimento');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo do Terror') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo do Terror';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


// SENHORES DA GUERRA1
procedure TfrmJogo.imgWar1IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgWar1I.Visible := false;
    imgWar1.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Senhores da Guerra';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Senhores da Guerra') then
    begin
      showmessage('Bem vindo a batalha');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Senhores da Guerra') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Senhores da Guerra';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;

// SENHORES DA GUERRA2
procedure TfrmJogo.imgWar2IClick(Sender: TObject);
begin
  if limite <= 1 then // oculta a interrogação
  begin
    imgWar2I.Visible := false;
    imgWar2.Visible := True;
    limite := limite + 1;
  end;

  if limite = 3 then // se passar o limite não vai
  begin
    limite := limite - 3;
  end;

  if limite = 1 then // prepara a estipulação dos "vnome's"
  begin
    vnome1 := 'Tribo dos Senhores da Guerra';
  end;

  if limite = 2 then // deixando todas interrogações invisiveis
  begin
    DesabilitarImagens;
    limite:=0;

    if (vnome1 = 'Tribo dos Senhores da Guerra') then
    begin
      showmessage('Bem vindo a batalha');
      npares := npares - 1;
    end;

    if (vnome1 <> 'Tribo dos Senhores da Guerra') then
    begin
      showmessage('Desapareça inseto');
    end;
  end;

  if aberta = True then
  begin
    vnome2 := 'Tribo dos Senhores da Guerra';
    horinha.Enabled := True;
  end;

  if aberta <> True then
  begin
    aberta := True;
  end;
end;


procedure TfrmJogo.DesabilitarImagens;
begin
  imgMystic1I.Enabled := false;
  imgWar1I.Enabled := false;
  imgDark1I.Enabled := false;
  imgTerror1I.Enabled := false;
  imgAtroz2I.Enabled := false;
  imgOutlaw1I.Enabled := false;
  imgTerror2I.Enabled := false;
  imgSlaughter1I.Enabled := false;
  imgMarauder1I.Enabled := false;
  imgMachi2I.Enabled := false;
  imgDark2I.Enabled := false;
  imgAtroz1I.Enabled := false;
  imgMystic2I.Enabled := false;
  imgSlaughter2I.Enabled := false;
  imgWar2I.Enabled := false;
  imgMachi1I.Enabled := false;
  imgMarauder2I.Enabled := false;
  imgOutlaw2I.Enabled := false;
end;

procedure TfrmJogo.HabilitarImagens;
begin
  imgMystic1I.Enabled := True;
  imgWar1I.Enabled := True;
  imgDark1I.Enabled := True;
  imgTerror1I.Enabled := True;
  imgAtroz2I.Enabled := True;
  imgOutlaw1I.Enabled := True;
  imgTerror2I.Enabled := True;
  imgSlaughter1I.Enabled := True;
  imgMarauder1I.Enabled := True;
  imgMachi2I.Enabled := True;
  imgDark2I.Enabled := True;
  imgAtroz1I.Enabled := True;
  imgMystic2I.Enabled := True;
  imgSlaughter2I.Enabled := True;
  imgWar2I.Enabled := True;
  imgMachi1I.Enabled := True;
  imgMarauder2I.Enabled := True;
  imgOutlaw2I.Enabled := True;
end;

procedure TfrmJogo.Continuar;
begin
  if (npares=0) then
    begin                                                             //tipo caption                   //yes or no
      if Application.MessageBox ('Deseja Jogar novamente? Panaka, zuas S2', 'Confirmação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)=IDNO then
      close;
      //MessageBox('aaaaaaaaaaaaaaaaaaaaaaaaaaaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee CUZÃOOOO GG NESSSA POHA, KKKKKKKK');
    end
  else
    begin
      LimparTela;
    end;
    Completo:=true;
    Carta:='';
    npares:=9;
    limite:=0;
    aberta:=false;

end;

procedure TfrmJogo.LimparTela;
begin
  //showmessage(IntToStr(npares));

  //interrogações
  imgMystic1I.Enabled := True;
  imgWar1I.Enabled := True;
  imgDark1I.Enabled := True;
  imgTerror1I.Enabled := True;
  imgAtroz2I.Enabled := True;
  imgOutlaw1I.Enabled := True;
  imgTerror2I.Enabled := True;
  imgSlaughter1I.Enabled := True;
  imgMarauder1I.Enabled := True;
  imgMachi2I.Enabled := True;
  imgDark2I.Enabled := True;
  imgAtroz1I.Enabled := True;
  imgMystic2I.Enabled := True;
  imgSlaughter2I.Enabled := True;
  imgWar2I.Enabled := True;
  imgMachi1I.Enabled := True;
  imgMarauder2I.Enabled := True;
  imgOutlaw2I.Enabled := True;

  //imagens
  imgMystic1.Enabled := False;
  imgDark1.Enabled := False;
  imgWar1.Enabled := False;
  imgDark1.Enabled := False;
  imgTerror1.Enabled := False;
  imgAtroz2.Enabled := False;
  imgOutlaw1.Enabled := False;
  imgTerror2.Enabled := False;
  imgSlaughter1.Enabled := False;
  imgMarauder1.Enabled := False;
  imgMachi2.Enabled := False;
  imgDark2.Enabled := False;
  imgAtroz1.Enabled := False;
  imgMystic2.Enabled := False;
  imgSlaughter2.Enabled := False;
  imgWar2.Enabled := False;
  imgMachi1.Enabled := False;
  imgMarauder2.Enabled := False;
  imgOutlaw2.Enabled := False;
end;

end.
