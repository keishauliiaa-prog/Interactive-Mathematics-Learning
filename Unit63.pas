unit Unit63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormBola = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditR: TEdit;
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
  FormBola: TFormBola;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormBola.Image2Click(Sender: TObject);
begin
  FormBola.Hide;
  FormVolume.Show;
end;

procedure TFormBola.Button1Click(Sender: TObject);
  procedure HitungVolumeBola;
  var
  r, volume : real ;
  const PI = 3.14;
  begin
    r := StrToFloat (EditR.Text);
    volume := (4 * PI * r * r * r) / 3;
    EditVolume.Text := FloatToStr (volume);
  end;

BEGIN
  HitungVolumeBola
END;

end.
