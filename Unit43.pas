unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormSPLDV = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSPLDV: TFormSPLDV;

implementation

uses Unit41;

{$R *.dfm}

procedure TFormSPLDV.Image2Click(Sender: TObject);
begin
  FormAritmetikaDanFungsi.Show;
  FormSPLDV.Hide;
end;

procedure TFormSPLDV.Button1Click(Sender: TObject);
var
  a1, b1, c1, a2, b2, c2: Double;
  x, y, D, Dx, Dy: Double;
begin

  if TryStrToFloat(Edit1.Text, a1) and
     TryStrToFloat(Edit2.Text, b1) and
     TryStrToFloat(Edit3.Text, c1) and
     TryStrToFloat(Edit4.Text, a2) and
     TryStrToFloat(Edit5.Text, b2) and
     TryStrToFloat(Edit6.Text, c2) then
  begin

    D  := a1 * b2 - a2 * b1;
    Dx := c1 * b2 - c2 * b1;
    Dy := a1 * c2 - a2 * c1;

    if D <> 0 then
    begin
      x := Dx / D;
      y := Dy / D;

      Edit7.Text := FloatToStr(x);
      Edit8.Text := FloatToStr(y);
    end
    else
    begin
    
      ShowMessage('SPL tidak memiliki solusi tunggal (D = 0)');
    end;
  end
  else
    ShowMessage('Masukkan semua angka dengan benar!');
end;


end.
