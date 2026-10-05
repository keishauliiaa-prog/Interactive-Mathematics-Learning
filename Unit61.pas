unit Unit61;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormTabung = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditR: TEdit;
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
  FormTabung: TFormTabung;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormTabung.Image2Click(Sender: TObject);
begin
  FormTabung.Hide;
  FormVolume.Show;
end;

procedure TFormTabung.Button1Click(Sender: TObject);
  procedure HitungVolumeTabung;
  var
  r, t, volume : real;
  const PI = 3.14 ;

  begin
    r := StrToFloat (EditR.Text);
    t := StrToFloat (EditTinggi.Text);
    volume := PI*r*r*t;
    EditVolume.Text := FloatToStr(volume);
  end;

BEGIN
  HitungVolumeTabung
END;

end.
