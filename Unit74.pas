unit Unit74;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormCekPrima = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    EditInput: TEdit;
    EditHasil: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCekPrima: TFormCekPrima;

implementation

uses Unit66, Unit75;

{$R *.dfm}

procedure TFormCekPrima.Image2Click(Sender: TObject);
begin
  FormCekPrima.Hide;
  FormPrima.Show;
end;

procedure TFormCekPrima.Image3Click(Sender: TObject);
begin
  FormCekPrima.Hide;
  FormCP2.Show;
end;

procedure TFormCekPrima.Button1Click(Sender: TObject);
var
  angka, i : integer;
  isPrima : boolean;
begin
  if not TryStrToInt (EditInput.Text,angka) then
  begin
    EditHasil.Text := 'Masukkan angka yang valid.';
    Exit;
  end;

  if angka < 2 then
    isPrima := false
    else
      isPrima := true;

  if (angka > 2) and (angka mod 2 = 0) then
  begin
    isPrima := false;
  end
  else if angka > 2 then
  begin
    for i := 2 to Trunc(Sqrt(angka)) do
      begin
        if angka mod i = 0 then
          begin
            isPrima := false;
            break;
          end;
      end;
  end;

  if isPrima then
    EditHasil.Text := 'Bilangan Prima'
  else
    EditHasil.Text := 'Bukan Bilangan Prima' ;
  end;

end.
