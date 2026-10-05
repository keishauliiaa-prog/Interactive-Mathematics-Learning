unit Unit64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormLSegitiga = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditAlas: TEdit;
    EditTinggi: TEdit;
    EditVolume: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLSegitiga: TFormLSegitiga;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormLSegitiga.Image2Click(Sender: TObject);
begin
  FormLSegitiga.Hide;
  FormVolume.Show;
end;

procedure TFormLSegitiga.Button1Click(Sender: TObject);
  procedure HitungVolumeLSegitiga;
  var
  LuasAlas, tinggi, volume : real ;
  begin
    LuasAlas := StrToFloat (EditAlas.Text);
    tinggi := StrToFloat (EditTinggi.Text);
    volume := (1/3) * LuasAlas * tinggi;
    EditVolume.Text := FloatToStr (volume);
  end;

BEGIN
  HitungVolumeLSegitiga
END;

end.
