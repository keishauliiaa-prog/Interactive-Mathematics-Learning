unit Unit77;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormDaftarPrima = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditInput: TEdit;
    Tulis: TButton;
    ListBox1: TListBox;
    procedure Image2Click(Sender: TObject);
    procedure TulisClick(Sender: TObject);
  private
    function IsPrime(Num: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  FormDaftarPrima: TFormDaftarPrima;

implementation

uses Unit66; 

{$R *.dfm}

function TFormDaftarPrima.IsPrime(Num: Integer): Boolean;
var
  i: Integer;
begin
  Result := True;
  if Num <= 1 then
    Result := False
  else if Num = 2 then
    Result := True
  else if Num mod 2 = 0 then
    Result := False
  else
  begin
    for i := 3 to Trunc(Sqrt(Num)) do
    begin
      if Num mod i = 0 then
      begin
        Result := False;
        Break;
      end;
    end;
  end;
end;

procedure TFormDaftarPrima.TulisClick(Sender: TObject);
var
  Limit, i: Integer;
begin
  ListBox1.Clear;
  try
    Limit := StrToInt(EditInput.Text);
  except
    on E: Exception do
    begin
      ShowMessage('Input tidak valid. Masukkan angka bulat positif.');
      Exit;
    end;
  end;

  if Limit < 2 then
  begin
    ShowMessage('Batas harus lebih besar dari 1');
    Exit;
  end;

  for i := 2 to Limit do
  begin
    if IsPrime(i) then
      ListBox1.Items.Add(IntToStr(i));
  end;
end;

procedure TFormDaftarPrima.Image2Click(Sender: TObject);
begin
  FormDaftarPrima.Hide;
  FormPrima.Show;
end;

end.

