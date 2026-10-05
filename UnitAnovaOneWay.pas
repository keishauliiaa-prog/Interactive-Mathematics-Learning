unit UnitAnovaOneWay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, jpeg, ExtCtrls;

type
  TFormAnovaOneWay = class(TForm)
    EditAlpha: TEdit;
    EditEffectSize: TEdit;
    EditRounding: TEdit;
    StringGrid1: TStringGrid;
    EditStatistic: TEdit;
    EditPValue: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnovaOneWay: TFormAnovaOneWay;

implementation

uses Unit76;

{$R *.dfm}

procedure TFormAnovaOneWay.Image2Click(Sender: TObject);
type
  ArrData = array[1..100, 1..10] of Double; 
  ArrRata = array[1..10] of Double;
  ArrJumlah = array[1..10] of Integer;

var
  Data: ArrData;
  Jumlah: ArrJumlah;
  Rata: ArrRata;
  JmlGrup, JmlTotal: Integer;
procedure BacaData(var Data: ArrData; var Jumlah: ArrJumlah; var JmlGrup, JmlTotal: Integer);
var
  i, j: Integer;
  val: Double;
begin
  JmlGrup := StringGrid1.ColCount;
  JmlTotal := 0;
  for i := 1 to JmlGrup do
  begin
    Jumlah[i] := 0;
    for j := 1 to StringGrid1.RowCount - 1 do
    begin
      if StringGrid1.Cells[i - 1, j] <> '' then
      begin
        val := StrToFloat(StringGrid1.Cells[i - 1, j]);
        Inc(Jumlah[i]);
        Data[Jumlah[i], i] := val;
        Inc(JmlTotal);
      end;
    end;
  end;
end;

function HitungTotalMean(Data: ArrData; Jumlah: ArrJumlah; JmlGrup: Integer): Double;
var
  i, j: Integer;
  Total:Double;
  Count: Integer;
begin
  Total := 0;
  Count := 0;
  for i := 1 to JmlGrup do
    for j := 1 to Jumlah[i] do
    begin
      Total := Total + Data[j, i];
      Inc(Count);
    end;
  if Count = 0 then Result := 0
  else Result := Total / Count;
end;

procedure HitungRataPerGrup(Data: ArrData; Jumlah: ArrJumlah; JmlGrup: Integer; var Rata: ArrRata);
var
  i, j: Integer;
  Total: Double;
begin
  for i := 1 to JmlGrup do
  begin
    Total := 0;
    for j := 1 to Jumlah[i] do
      Total := Total + Data[j, i];
    if Jumlah[i] > 0 then
      Rata[i] := Total / Jumlah[i]
    else
      Rata[i] := 0;
  end;
end;

function HitungSSB(Rata: ArrRata; Jumlah: ArrJumlah; TotalMean: Double; JmlGrup: Integer): Double;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to JmlGrup do
    Result := Result + Jumlah[i] * Sqr(Rata[i] - TotalMean);
end;

function HitungSSW(Data: ArrData; Jumlah: ArrJumlah; Rata: ArrRata; JmlGrup: Integer): Double;
var
  i, j: Integer;
begin
  Result := 0;
  for i := 1 to JmlGrup do
    for j := 1 to Jumlah[i] do
      Result := Result + Sqr(Data[j, i] - Rata[i]);
end;

function AmbilFTabel(df1, df2: Integer; alpha: Double): Double;
begin
  Result := 0.00;

  if alpha = 0.05 then
  begin
    if df1 = 1 then
    begin
      if df2 = 1 then Result := 161.4 else
      if df2 = 2 then Result := 18.51 else
      if df2 = 3 then Result := 10.13 else
      if df2 = 4 then Result := 7.71 else
      if df2 = 5 then Result := 6.61 else
      if df2 = 6 then Result := 5.99 else
      if df2 = 7 then Result := 5.59 else
      if df2 = 8 then Result := 5.32 else
      if df2 = 9 then Result := 5.12 else
      if df2 = 10 then Result := 4.96 else
      if df2 = 15 then Result := 4.54 else
      if df2 = 20 then Result := 4.35 else
      if df2 = 30 then Result := 4.17;
    end
    else if df1 = 2 then
    begin
      if df2 = 1 then Result := 199.5 else
      if df2 = 2 then Result := 19.00 else
      if df2 = 3 then Result := 9.55 else
      if df2 = 4 then Result := 6.94 else
      if df2 = 5 then Result := 5.79 else
      if df2 = 6 then Result := 5.14 else
      if df2 = 8 then Result := 4.46 else
      if df2 = 9 then Result := 4.26 else
      if df2 = 10 then Result := 4.10 else
      if df2 = 12 then Result := 3.89 else
      if df2 = 15 then Result := 3.68 else
      if df2 = 20 then Result := 3.49 else
      if df2 = 30 then Result := 3.32;
    end
    else if df1 = 3 then
    begin
      if df2 = 2 then Result := 29.46 else
      if df2 = 3 then Result := 9.28 else
      if df2 = 4 then Result := 6.59 else
      if df2 = 5 then Result := 5.41 else
      if df2 = 6 then Result := 4.76 else
      if df2 = 9 then Result := 3.86 else
      if df2 = 10 then Result := 3.71 else
      if df2 = 12 then Result := 3.49 else
      if df2 = 16 then Result := 3.24 else
      if df2 = 20 then Result := 3.10 else
      if df2 = 30 then Result := 2.92;
    end
    else if df1 = 4 then
    begin
      if df2 = 2 then Result := 14.82 else
      if df2 = 4 then Result := 6.39 else
      if df2 = 5 then Result := 5.19 else
      if df2 = 6 then Result := 4.53 else
      if df2 = 9 then Result := 3.63 else
      if df2 = 12 then Result := 3.26 else
      if df2 = 16 then Result := 3.01 else
      if df2 = 20 then Result := 2.87 else
      if df2 = 30 then Result := 2.69;
    end
    else if df1 = 5 then
    begin
      if df2 = 2 then Result := 12.21 else
      if df2 = 5 then Result := 5.05 else
      if df2 = 6 then Result := 4.39 else
      if df2 = 9 then Result := 3.48 else
      if df2 = 12 then Result := 3.11 else
      if df2 = 16 then Result := 2.87 else
      if df2 = 20 then Result := 2.74 else
      if df2 = 30 then Result := 2.57;
    end
    else if df1 = 6 then
    begin
      if df2 = 5 then Result := 4.39 else
      if df2 = 6 then Result := 4.10 else
      if df2 = 9 then Result := 3.29 else
      if df2 = 12 then Result := 2.97 else
      if df2 = 16 then Result := 2.74 else
      if df2 = 20 then Result := 2.61 else
      if df2 = 30 then Result := 2.45;
    end
    else if df1 = 7 then
    begin
      if df2 = 6 then Result := 3.87 else
      if df2 = 9 then Result := 3.15 else
      if df2 = 12 then Result := 2.85 else
      if df2 = 16 then Result := 2.62 else
      if df2 = 20 then Result := 2.49 else
      if df2 = 30 then Result := 2.34;
    end
    else if df1 = 8 then
    begin
      if df2 = 6 then Result := 3.71 else
      if df2 = 9 then Result := 3.02 else
      if df2 = 12 then Result := 2.73 else
      if df2 = 16 then Result := 2.51 else
      if df2 = 20 then Result := 2.38 else
      if df2 = 30 then Result := 2.23;
    end
    else if df1 = 9 then
    begin
      if df2 = 6 then Result := 3.58 else
      if df2 = 9 then Result := 2.93 else
      if df2 = 12 then Result := 2.64 else
      if df2 = 16 then Result := 2.43 else
      if df2 = 20 then Result := 2.31 else
      if df2 = 30 then Result := 2.17;
    end
    else if df1 = 10 then
    begin
      if df2 = 6 then Result := 3.49 else
      if df2 = 9 then Result := 2.85 else
      if df2 = 12 then Result := 2.56 else
      if df2 = 16 then Result := 2.37 else
      if df2 = 20 then Result := 2.25 else
      if df2 = 30 then Result := 2.11;
    end;
  end;
end;


procedure HitungANOVA;
var
  TotalMean, SSB, SSW, F: Double;
  DfBetween, DfWithin: Integer;
  FTabel, Alpha: Double;
begin
  BacaData(Data, Jumlah, JmlGrup, JmlTotal);
  TotalMean := HitungTotalMean(Data, Jumlah, JmlGrup);
  HitungRataPerGrup(Data, Jumlah, JmlGrup, Rata);
  SSB := HitungSSB(Rata, Jumlah, TotalMean, JmlGrup);
  SSW := HitungSSW(Data, Jumlah, Rata, JmlGrup);

  DfBetween := JmlGrup - 1;
  DfWithin := JmlTotal - JmlGrup;

  if (DfBetween > 0) and (DfWithin > 0) then
    F := (SSB / DfBetween) / (SSW / DfWithin)
  else
    F := 0;

  Alpha := StrToFloatDef(EditAlpha.Text, 0.05);
  FTabel := AmbilFTabel(DfBetween, DfWithin, Alpha);

  EditStatistic.Text := FormatFloat('0.0000', F);

  if F > FTabel then
    EditPValue.Text := 'Signifikan (F > F tabel)'
  else
    EditPValue.Text := 'Tidak Signifikan (F <= F tabel)';
end;


begin
  HitungANOVA;
end;

procedure TFormAnovaOneWay.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0, 0] := 'A';
StringGrid1.Cells[1, 0] := 'B';
StringGrid1.Cells[2, 0] := 'C';
end;



procedure TFormAnovaOneWay.Image3Click(Sender: TObject);
begin
  FormStatistic.Show;
  FormAnovaOneWay.Hide;
end;

end.
