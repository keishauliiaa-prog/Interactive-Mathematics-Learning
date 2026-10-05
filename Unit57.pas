unit Unit57;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormVolume = class(TForm)
    Image1: TImage;
    Image2: TImage;
    ImageKubus: TImage;
    ImagePSegitiga: TImage;
    ImageKerucut: TImage;
    ImageLSegitiga: TImage;
    ImageBalok: TImage;
    ImageTabung: TImage;
    ImageBola: TImage;
    ImageLSegiEmpat: TImage;
    procedure Image2Click(Sender: TObject);
    procedure ImageKubusClick(Sender: TObject);
    procedure ImagePSegitigaClick(Sender: TObject);
    procedure ImageKerucutClick(Sender: TObject);
    procedure ImageLSegitigaClick(Sender: TObject);
    procedure ImageBalokClick(Sender: TObject);
    procedure ImageTabungClick(Sender: TObject);
    procedure ImageBolaClick(Sender: TObject);
    procedure ImageLSegiEmpatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVolume: TFormVolume;

implementation

uses Unit48, Unit58, Unit60, Unit62, Unit64, Unit59, Unit61, Unit63,
  Unit65;

{$R *.dfm}

procedure TFormVolume.Image2Click(Sender: TObject);
begin
  FormVolume.Hide;
  if not Assigned(FormBRuang) then
  begin
    FormBRuang := TFormBRuang.Create(Application);
  end;
  FormBRuang.Show;
end;


procedure TFormVolume.ImageKubusClick(Sender: TObject);
begin
  FormVolume.Hide;
  FormKubus.Show;
end;

procedure TFormVolume.ImagePSegitigaClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormPSegitiga.Show;

end;

procedure TFormVolume.ImageKerucutClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormKerucut.Show;
end;

procedure TFormVolume.ImageLSegitigaClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormLSegitiga.SHow;
end;

procedure TFormVolume.ImageBalokClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormBalok.Show;
end;

procedure TFormVolume.ImageTabungClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormTabung.Show;
   
end;

procedure TFormVolume.ImageBolaClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormBola.Show;
end;

procedure TFormVolume.ImageLSegiEmpatClick(Sender: TObject);
begin
   FormVolume.Hide;
   FormLSegiEmpat.Show;
end;

end.
