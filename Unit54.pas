unit Unit54;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormJajargenjang = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditAlas: TEdit;
    EditTinggi: TEdit;
    EditLuas: TEdit;
    Hitung: TButton;
    procedure Image2Click(Sender: TObject);
    procedure HitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJajargenjang: TFormJajargenjang;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormJajargenjang.Image2Click(Sender: TObject);
begin
  FormJajargenjang.Hide;
  FormLuas.Show;
end;

procedure TFormJajargenjang.HitungClick(Sender: TObject);
  procedure HitungLuasJajargenjang;
  var
  alas, tinggi, luas : real ;
  begin
    alas := StrToFloat (EditAlas.Text);
    tinggi := StrToFloat (EditTinggi.Text);
    luas := alas*tinggi;
    EditLuas.Text := FloatToStr(luas) ;
  end;

BEGIN
  HitungLuasJajargenjang
END;

end.
