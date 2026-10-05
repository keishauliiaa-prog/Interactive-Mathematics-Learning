unit Unit56;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormKetupat = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditD1: TEdit;
    EditD2: TEdit;
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
  FormKetupat: TFormKetupat;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormKetupat.Image2Click(Sender: TObject);
begin
  FormKetupat.Hide;
  FormLuas.Show;
end;

procedure TFormKetupat.Button1Click(Sender: TObject);
procedure HitungLuasKetupat;
  var
  d1, d2, luas : real;
  begin
    d1 := StrToFloat (EditD1.Text);
    d2 := StrToFloat (EditD2.Text);
    luas := (d1*d2) / 2 ;
    EditLuas.Text := FloatToStr (luas);
  end;

BEGIN
  HitungLuasKetupat
END;

end.
