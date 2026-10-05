unit Unit40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, jpeg;

type
  TFormGPAGoalPlanner = class(TForm)
    Image1: TImage;
    Image2: TImage;
    StringGrid1: TStringGrid;
    Image3: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure BacaData;
    procedure HitungIPK;
    procedure CekCumlaude;
  public
  end;

var
  FormGPAGoalPlanner: TFormGPAGoalPlanner;

implementation

uses Unit38;

{$R *.dfm}
procedure TFormGPAGoalPlanner.FormCreate(Sender: TObject);
begin
  StringGrid1.ColCount := 5;
  StringGrid1.RowCount := 11;
  StringGrid1.FixedRows := 1; 

  StringGrid1.Cells[0, 0] := 'Mata Kuliah';
  StringGrid1.Cells[1, 0] := 'SKS';
  StringGrid1.Cells[2, 0] := 'Nilai Huruf';
  StringGrid1.Cells[3, 0] := 'AM';
  StringGrid1.Cells[4, 0] := 'SKXAM';
end;

type
  MataKuliah = record
    NamaMatkul : string;
    SKS        : Integer;
    NilaiHuruf : string;
    Mutu       : Real;
  end;

const
  NMax = 100;

var
  DataMatkul: array[1..NMax] of MataKuliah;
  N: Integer;

function NilaiToAngka(NilaiHuruf: string): Real;
begin
  if NilaiHuruf = 'A'  then Result := 4.00
  else if NilaiHuruf = 'A-' then Result := 3.70
  else if NilaiHuruf = 'B+' then Result := 3.40
  else if NilaiHuruf = 'B'  then Result := 3.00
  else if NilaiHuruf = 'B-' then Result := 2.70
  else if NilaiHuruf = 'C+' then Result := 2.40
  else if NilaiHuruf = 'C'  then Result := 2.00
  else if NilaiHuruf = 'D'  then Result := 1.00
  else Result := 0.00;
end;

procedure TFormGPAGoalPlanner.BacaData;
var
  i: Integer;
  AngkaMutu: Real;
begin
  N := 0;
  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    if Trim(StringGrid1.Cells[0, i]) <> '' then
    begin
      Inc(N);
      DataMatkul[N].NamaMatkul := StringGrid1.Cells[0, i];
      DataMatkul[N].SKS := StrToIntDef(StringGrid1.Cells[1, i], 0);
      DataMatkul[N].NilaiHuruf := StringGrid1.Cells[2, i];

      AngkaMutu := NilaiToAngka(DataMatkul[N].NilaiHuruf);
      DataMatkul[N].Mutu := AngkaMutu * DataMatkul[N].SKS;

      StringGrid1.Cells[3, i] := FormatFloat('0.00', AngkaMutu);
      StringGrid1.Cells[4, i] := FormatFloat('0.00', DataMatkul[N].Mutu);
    end;
  end;
end;


procedure TFormGPAGoalPlanner.HitungIPK;
var
  TotalSKS, TotalMutu: Real;
  i: Integer;
  IPK: Real;
begin
  BacaData;
  TotalSKS := 0;
  TotalMutu := 0;
  for i := 1 to N do
  begin
    TotalSKS := TotalSKS + DataMatkul[i].SKS;
    TotalMutu := TotalMutu + DataMatkul[i].Mutu;
  end;

  if TotalSKS > 0 then
    IPK := TotalMutu / TotalSKS
  else
    IPK := 0;

  Edit1.Text := FloatToStr(TotalSKS);
  Edit2.Text := FormatFloat('0.00', TotalMutu);
  Edit3.Text := FormatFloat('0.00', IPK);
end;

procedure TFormGPAGoalPlanner.CekCumlaude;
var
  IPK: Real;
  i: Integer;
  DaE: Boolean;
begin
  HitungIPK;
  IPK := StrToFloatDef(Edit3.Text, 0);
  DaE := False;

  for i := 1 to N do
  begin
    if (DataMatkul[i].NilaiHuruf = 'D') or (DataMatkul[i].NilaiHuruf = 'E') then
      DaE := True;
  end;

  if (IPK >= 3.51) and (not DaE) then
    Edit4.Text:='Eligible for Cum Laude!'
  else
    Edit4.Text:='Not yet eligible for Cum Laude.';
end;

procedure TFormGPAGoalPlanner.Image3Click(Sender: TObject);
begin
  CekCumlaude;
end;

procedure TFormGPAGoalPlanner.Image2Click(Sender: TObject);
begin
  FormGPAGoalPlanner.Hide;
  FormKonversi.Show;
end;

end.

