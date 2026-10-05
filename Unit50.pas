unit Unit50;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormPersegiPanjang = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditPanjang: TEdit;
    EditLebar: TEdit;
    EditLuas: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPersegiPanjang: TFormPersegiPanjang;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormPersegiPanjang.Image2Click(Sender: TObject);
begin
  FormPersegiPanjang.Hide;
  FormLuas.Show;
end;

procedure TFormPersegiPanjang.Button1Click(Sender: TObject);
  procedure HitungLuasPersegiPanjang;
  var
  panjang, lebar, luas : real;
  begin
    panjang := StrToFloat (EditPanjang.Text);
    lebar := StrToFloat (EditLebar.Text);
    luas := (panjang*lebar);
    EditLuas.Text := FloatToStr (luas);
  end;

BEGIN
  HitungLuasPersegiPanjang
END;

end.
