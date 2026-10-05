unit Unit65;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormLSegiEmpat = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditAlas: TEdit;
    EditSisi: TEdit;
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
  FormLSegiEmpat: TFormLSegiEmpat;

implementation

uses Unit57;

{$R *.dfm}

procedure TFormLSegiEmpat.Image2Click(Sender: TObject);
begin
  FormLSegiEmpat.Hide;
  FormVolume.Show;
end;

procedure TFormLSegiEmpat.Button1Click(Sender: TObject);
  procedure HitungVolumeLSegiEmpat;
  var
  LuasAlas, LuasSisiTegak, volume : real ;
  begin
    LuasAlas := StrToFloat (EditAlas.Text);
    LuasSisiTegak := StrToFloat (EditSisi.Text);
    volume := LuasAlas + LuasSisiTegak;
    EditVolume.Text := FloatToStr (volume);
  end;

BEGIN
  HitungVolumeLSegiEmpat
END;
end.
