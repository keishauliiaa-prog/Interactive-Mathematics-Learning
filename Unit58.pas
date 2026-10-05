unit Unit58;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormKubus = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditInput: TEdit;
    EditVolume: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKubus: TFormKubus;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormKubus.Button1Click(Sender: TObject);
  procedure HitungVolumeKubus;
  var
  sisi, volume : real ;
  begin
    sisi := StrToFloat (EditInput.Text);
    volume := sisi*sisi*sisi;
    EditVolume.Text := FLoatToStr(volume);
  end;

BEGIN
  HitungVolumeKubus
END;

procedure TFormKubus.Image2Click(Sender: TObject);
begin
  FormKubus.Hide;
  FormVolume.Show;
end;

end.
