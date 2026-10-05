unit Unit62;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormKerucut = class(TForm)
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
  FormKerucut: TFormKerucut;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormKerucut.Image2Click(Sender: TObject);
begin
  FormKerucut.Hide;
  FormVolume.Show;
end;

procedure TFormKerucut.Button1Click(Sender: TObject);
  procedure HitungVolumeKerucut;
  var
  r , t , volume : real ;
  const PI = 3.14;
  begin
    r := StrToFloat (EditR.Text);
    t := StrToFloat (EditTinggi.Text);
    volume := (PI*r*r*t) / 3;
    EditVolume.Text := FloatToStr(volume);
  end;

BEGIN
  HitungVolumeKerucut
END;

end.
