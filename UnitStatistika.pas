unit UnitStatistika;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormCalcStatistika = class(TForm)
    EditInput: TEdit;
    ListBox1: TListBox;
    EditHasil: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
  private
    procedure BacaData(var A: array of Integer);
  public
  end;

var
  FormCalcStatistika: TFormCalcStatistika;

implementation

uses Unit76;

{$R *.dfm}

procedure TFormCalcStatistika.Image2Click(Sender: TObject);
begin
 Listbox1.Items.Add(EditInput.Text);
 EditInput.Text:='';
end;

procedure TFormCalcStatistika.BacaData(var A: array of Integer);
var
  i: Integer;
begin
  for i := 0 to ListBox1.Items.Count - 1 do
    A[i] := StrToInt(ListBox1.Items[i]);
end;


procedure TFormCalcStatistika.Image3Click(Sender: TObject);
begin
  EditHasil.Text :=IntToStr(ListBox1.Items.Count);
end;


procedure TFormCalcStatistika.Image4Click(Sender: TObject);
var
  A: array of Integer;
  i, maks: Integer;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);
  maks := A[0];
  for i := 1 to High(A) do
    if A[i] > maks then
      maks := A[i];
  EditHasil.Text :=IntToStr(maks);
end;


procedure TFormCalcStatistika.Image5Click(Sender: TObject);
var
  A: array of Integer;
  i, min: Integer;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);
  min := A[0];
  for i := 1 to High(A) do
    if A[i] < min then
      min := A[i];
  EditHasil.Text :=IntToStr(min);
end;


procedure TFormCalcStatistika.Image6Click(Sender: TObject);
var
  A: array of Integer;
  i, jumlah: Integer;
  rata: Real;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);
  jumlah := 0;
  for i := 0 to High(A) do
    jumlah := jumlah + A[i];
  if Length(A) > 0 then
    rata := jumlah / Length(A)
  else
    rata := 0;
  EditHasil.Text :=FormatFloat('0.00', rata);
end;

procedure TFormCalcStatistika.Image7Click(Sender: TObject);
var
  A: array of Integer;
  i, j, freq, maxFreq, modus: Integer;
begin

  SetLength(A, ListBox1.Items.Count);
  BacaData(A);

  if Length(A) = 0 then
  begin
    EditHasil.Text := 'Data kosong';
    Exit;
  end;

  maxFreq := 0;
  modus := A[0];

  //menghitunf frekuensi
  for i := 0 to High(A) do
  begin
    freq := 0;
    for j := 0 to High(A) do
    begin
      if A[j] = A[i] then
        Inc(freq);
    end;

    if freq > maxFreq then
    begin
      maxFreq := freq;
      modus := A[i];
    end;
  end;

  EditHasil.Text :=IntToStr(modus);
end;

procedure TFormCalcStatistika.Image8Click(Sender: TObject);
var
  A: array of Integer;
  i, j, tmp: Integer;
  median: Real;
  n: Integer;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);

  n := Length(A);
  if n = 0 then
  begin
    EditHasil.Text := 'Data kosong';
    Exit;
  end;

  for i := 0 to n - 2 do
    for j := i + 1 to n - 1 do
      if A[i] > A[j] then
      begin
        tmp := A[i];
        A[i] := A[j];
        A[j] := tmp;
      end;

  if n mod 2 = 1 then
    median := A[n div 2]
  else
    median := (A[n div 2 - 1] + A[n div 2]) / 2;

  EditHasil.Text :=FormatFloat('0.00', median);
end;

procedure TFormCalcStatistika.Image9Click(Sender: TObject);
var
  A: array of Integer;
  i, maks, min, range: Integer;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);

  if Length(A) = 0 then
  begin
    EditHasil.Text := 'Data kosong';
    Exit;
  end;

  maks := A[0];
  min := A[0];
  for i := 1 to High(A) do
  begin
    if A[i] > maks then maks := A[i];
    if A[i] < min then min := A[i];
  end;

  range := maks - min;
  EditHasil.Text :=IntToStr(range);
end;

procedure TFormCalcStatistika.Image10Click(Sender: TObject);
var
  A: array of Integer;
  i, jumlah: Integer;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);
  jumlah := 0;
  for i := 0 to High(A) do
    jumlah := jumlah + A[i];
  EditHasil.Text := 'Jumlah: ' + IntToStr(jumlah);
end;

procedure TFormCalcStatistika.Image11Click(Sender: TObject);
var
  A: array of Integer;
  i: Integer;
  mean, jumlahSelisihKuadrat, stdev: Real;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);

  if Length(A) = 0 then
  begin
    EditHasil.Text := 'Data kosong';
    Exit;
  end;

  mean := 0;
  for i := 0 to High(A) do
    mean := mean + A[i];
  mean := mean / Length(A);


  jumlahSelisihKuadrat := 0;
  for i := 0 to High(A) do
    jumlahSelisihKuadrat := jumlahSelisihKuadrat + Sqr(A[i] - mean);


  stdev := Sqrt(jumlahSelisihKuadrat / Length(A));

  EditHasil.Text :=FormatFloat('0.00', stdev);
end;
procedure TFormCalcStatistika.Image12Click(Sender: TObject);
var
  A: array of Integer;
  i: Integer;
  mean, jumlahSelisihKuadrat, variansi: Real;
begin
  SetLength(A, ListBox1.Items.Count);
  BacaData(A);

  if Length(A) = 0 then
  begin
    EditHasil.Text := 'Data kosong';
    Exit;
  end;

  mean := 0;
  for i := 0 to High(A) do
    mean := mean + A[i];
  mean := mean / Length(A);

  jumlahSelisihKuadrat := 0;
  for i := 0 to High(A) do
    jumlahSelisihKuadrat := jumlahSelisihKuadrat + Sqr(A[i] - mean);

  variansi := jumlahSelisihKuadrat / Length(A);

  EditHasil.Text :=FormatFloat('0.00', variansi);
end;


procedure UrutkanArray(var A: array of Integer);
var
  i, j, temp: Integer;
begin
  for i := 0 to High(A) - 1 do
    for j := i + 1 to High(A) do
      if A[i] > A[j] then
      begin
        temp := A[i];
        A[i] := A[j];
        A[j] := temp;
      end;
end;

procedure HitungKuartil(const A: array of Integer; out Q1, Q2, Q3: Real);
var
  n: Integer;

  function AmbilKuartil(letakKuartil: Real): Real;
  var
    bawah, atas: Integer;
    desimal: Real;
  begin
    bawah := Trunc(letakKuartil);
    atas := bawah + 1;
    desimal := letakKuartil - bawah;

    if atas > Length(A) then
      Result := A[bawah - 1] // posisi real jatuh tepat di data terakhir
    else
      Result := A[bawah - 1] + desimal * (A[atas - 1] - A[bawah - 1]);
  end;

begin
  n := Length(A);
  if n = 0 then
  begin
    Q1 := 0; Q2 := 0; Q3 := 0;
    Exit;
  end;

  Q1 := AmbilKuartil(0.25 * (n + 1));
  Q2 := AmbilKuartil(0.50 * (n + 1));
  Q3 := AmbilKuartil(0.75 * (n + 1));
end;


procedure TFormCalcStatistika.Image13Click(Sender: TObject);
var
  A: array of Integer;
  n: Integer;
  Q1, Q2, Q3: Real;
begin
  n := ListBox1.Items.Count;
  SetLength(A, n);
  BacaData(A);
  UrutkanArray(A); 

  HitungKuartil(A, Q1, Q2, Q3);

  EditHasil.Text := Format('Q1=%.2f, Q2=%.2f, Q3=%.2f', [Q1, Q2, Q3]);
end;




















procedure TFormCalcStatistika.Image14Click(Sender: TObject);
begin
  ListBox1.Clear;
  EditHasil.Clear;
end;



procedure TFormCalcStatistika.Image15Click(Sender: TObject);
begin
  FormStatistic.Show;
  FormCalcStatistika.Hide;
end;

end.

