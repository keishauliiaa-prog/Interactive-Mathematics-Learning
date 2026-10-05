unit Unit52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormSegitiga = class(TForm)
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
  FormSegitiga: TFormSegitiga;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormSegitiga.Image2Click(Sender: TObject);
begin
    FormSegitiga.Hide;
    FormLuas.Show;
end;

procedure TFormSegitiga.HitungClick(Sender: TObject);
  procedure HitungLuasSegitiga;
  var
  alas, tinggi, luas : real ;
  begin
    alas := StrToFloat (EditAlas.Text);
    tinggi := StrToFloat (EditTinggi.Text);
    luas := (alas*tinggi) /  2;
    EditLuas.Text := FloatToStr (luas);
  end;

BEGIN
  HitungLuasSegitiga
END;


end.
