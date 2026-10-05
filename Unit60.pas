unit Unit60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormPSegitiga = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditAlas: TEdit;
    EditVolume: TEdit;
    EditTinggi: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPSegitiga: TFormPSegitiga;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormPSegitiga.Image2Click(Sender: TObject);
begin
  FormPSegitiga.Hide;
  FormVolume.Show;
end;

procedure TFormPSegitiga.Button1Click(Sender: TObject);
  procedure HitungVolumePSegitiga;
  var
  LuasAlas, tinggi, volume : real ;
  begin
    LuasAlas := StrToFloat (EditAlas.Text);
    tinggi := StrToFloat (EditTinggi.Text);
    volume := LuasAlas*tinggi ;
    EditVolume.Text := FloatToStr(volume);
  end;

BEGIN
  HitungVolumePSegitiga
END;

end.
