unit Unit44;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormAkarPersamaanKuadrat = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAkarPersamaanKuadrat: TFormAkarPersamaanKuadrat;

implementation

uses Unit41;

{$R *.dfm}

procedure TFormAkarPersamaanKuadrat.Image2Click(Sender: TObject);
begin
  FormAritmetikaDanFungsi.Show;
  FormAkarPersamaanKuadrat.Hide;
end;

procedure TFormAkarPersamaanKuadrat.Button1Click(Sender: TObject);
var
  a, b, c: Double;
  D, x1, x2: Double;
begin
  if TryStrToFloat(Edit1.Text, a) and
     TryStrToFloat(Edit2.Text, b) and
     TryStrToFloat(Edit3.Text, c) then
  begin
    if a = 0 then
    begin
      ShowMessage('Ini bukan persamaan kuadrat (a tidak boleh 0)');
      Exit;
    end;

    D := b*b - 4*a*c;

    if D > 0 then
    begin
      x1 := (-b + Sqrt(D)) / (2*a);
      x2 := (-b - Sqrt(D)) / (2*a);
      Edit4.Text := FloatToStr(x1);
      Edit5.Text := FloatToStr(x2);
    end
    else if D = 0 then
    begin
      x1 := -b / (2*a);
      Edit4.Text := FloatToStr(x1);
      Edit5.Text := FloatToStr(x1);
    end
    else
    begin
      ShowMessage('Akar-akar imajiner (D < 0). Tidak dapat ditampilkan sebagai bilangan real.');
      Edit4.Text := '';
      Edit5.Text := '';
    end;
  end
  else
    ShowMessage('Masukkan nilai a, b, dan c yang valid!');
end;



end.
