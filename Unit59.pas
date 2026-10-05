unit Unit59;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormBalok = class(TForm)
    Image1: TImage;
    EditPanjang: TEdit;
    Image2: TImage;
    EditLebar: TEdit;
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
  FormBalok: TFormBalok;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormBalok.Image2Click(Sender: TObject);
begin
  FormBalok.Hide;
  FormVolume.Show;
end;

procedure TFormBalok.Button1Click(Sender: TObject);
  procedure HitungVolumeBalok;
  var
    panjang, lebar, tinggi, volume : real ;
  begin
    panjang := StrToFloat (EditPanjang.Text);
    lebar := StrToFloat (EditLebar.Text);
    tinggi := StrToFloat (EditTinggi.Text);
    volume := panjang*lebar*tinggi ;
    EditVolume.Text := FloatToStr (volume);
  end;

BEGIN
  HitungVolumeBalok
END;

end.
