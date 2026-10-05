unit Unit55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormTrapesium = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Hitung: TButton;
    EditA: TEdit;
    EditB: TEdit;
    EditH: TEdit;
    EditLuas: TEdit;
    procedure Image2Click(Sender: TObject);
    procedure HitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTrapesium: TFormTrapesium;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormTrapesium.Image2Click(Sender: TObject);
begin
  FormTrapesium.Hide;
  FormLuas.Show;
end;

procedure TFormTrapesium.HitungClick(Sender: TObject);
  procedure HitungLuasTrapesium;
  var
  a, b, h, luas : real ;
  begin
    a := StrToFloat (EditA.Text) ;
    b := StrToFloat (EditB.Text) ;
    h := StrToFloat (EditH.Text) ;
    luas := 0.5*(a+b)*h;
    EditLuas.Text := FloatToStr (luas) ;
  end;

BEGIN
  HitungLuasTrapesium
END;
end.
