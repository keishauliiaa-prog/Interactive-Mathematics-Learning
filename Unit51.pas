unit Unit51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormLingkaran = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditJariJari: TEdit;
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
  FormLingkaran: TFormLingkaran;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormLingkaran.Image2Click(Sender: TObject);
begin
  FormLingkaran.Hide;
  FormLuas.Show;
end;

procedure TFormLingkaran.HitungClick(Sender: TObject);
  procedure HitungLuasLingkaran;
  var
  r, luas : real;
  const PI = 3.14 ;
  begin
    r := StrToFloat (EditJariJari.Text);
    luas := PI*r*r;
    EditLuas.Text := FloatToStr(luas);
  end;

BEGIN
  HitungLuasLingkaran
END;

end.
