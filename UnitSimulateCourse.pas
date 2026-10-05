unit UnitSimulateCourse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, jpeg;

type
  TFormSimulateCourse = class(TForm)
    StringGrid1: TStringGrid;
    Image2: TImage;
    Image3: TImage;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
  public
  end;

var
  FormSimulateCourse: TFormSimulateCourse;

implementation

uses Unit38;

{$R *.dfm}

procedure TFormSimulateCourse.FormCreate(Sender: TObject);
begin
  StringGrid1.ColCount := 8; // Jumlah kolom
  StringGrid1.RowCount := 11; // 1 baris data + header
  StringGrid1.FixedRows := 1; // baris pertama jadi header

  StringGrid1.Cells[0, 0] := 'Nama';
  StringGrid1.Cells[1, 0] := 'UTS';
  StringGrid1.Cells[2, 0] := 'UAS';
  StringGrid1.Cells[3, 0] := 'Kuis';
  StringGrid1.Cells[4, 0] := 'Tugas';
  StringGrid1.Cells[5, 0] := 'Proyek';
  StringGrid1.Cells[6, 0] := 'Nilai Akhir';
  StringGrid1.Cells[7, 0] := 'Grade';
end;

procedure TFormSimulateCourse.Image1Click(Sender: TObject);
const
  NMax = 100;

type
  Mahasiswa = record
    Nama    : string;
    UTS     : Real;
    UAS     : Real;
    Kuis    : Real;
    Tugas   : Real;
    Proyek  : Real;
    NAkhir  : Real;
    Grade   : string;
  end;

  TabMhs = array[1..NMax] of Mahasiswa;

  var
    Mhs : TabMhs;
    N   : Integer;

  procedure BacaData(var N: Integer; var Mhs: TabMhs);
  var
    i: Integer;
  begin
    n:=0;
    for i := 1 to StringGrid1.RowCount-1 do
    begin
      if Trim(StringGrid1.Cells[0, i]) <> '' then
      begin
      n := n + 1;
      Mhs[n].Nama   := StringGrid1.Cells[0, i];
      Mhs[n].UTS    := StrToFloatDef(StringGrid1.Cells[1, i],0);
      Mhs[n].UAS    := StrToFloatDef(StringGrid1.Cells[2, i],0);
      Mhs[n].Kuis  := StrToFloatDef(StringGrid1.Cells[3, i],0);
      Mhs[n].Tugas := StrToFloatDef(StringGrid1.Cells[4, i],0);
      Mhs[n].Proyek := StrToFloatDef(StringGrid1.Cells[5, i],0);
      end;
    end;
  end;

  procedure HitungData(N: Integer; var Mhs: TabMhs);
  var
    i: Integer;
  begin
  for i := 1 to N do
    begin
      Mhs[i].NAkhir := (0.3 * Mhs[i].UTS) + (0.3 * Mhs[i].UAS) +
                       (0.05 * Mhs[i].Kuis) + (0.15 * Mhs[i].Tugas) + (0.2*Mhs[i].Proyek);

      if Mhs[i].NAkhir >= 90 then Mhs[i].Grade := 'A'
      else if Mhs[i].NAkhir >= 85 then Mhs[i].Grade := 'A-'
      else if Mhs[i].NAkhir >= 80 then Mhs[i].Grade := 'B+'
      else if Mhs[i].NAkhir >= 75 then Mhs[i].Grade := 'B'
      else if Mhs[i].NAkhir >= 70 then Mhs[i].Grade := 'B-'
      else if Mhs[i].NAkhir >= 65 then Mhs[i].Grade := 'C+'
      else if Mhs[i].NAkhir >= 55 then Mhs[i].Grade := 'C'
      else if Mhs[i].NAkhir >= 50 then Mhs[i].Grade := 'D'
      else Mhs[i].Grade := 'E';
    end;
  end;

  procedure TulisData(N: Integer; Mhs: TabMhs);
  var
    i: Integer;
  begin
    for i := 1 to N do
    begin
      StringGrid1.Cells[6, i] := FloatToStrF(Mhs[i].NAkhir, ffFixed, 5, 2);
      StringGrid1.Cells[7, i] := Mhs[i].Grade;
    end;
  end;
begin
  BacaData(N, Mhs);
  HitungData(N, Mhs);
  TulisData(N, Mhs);
end;
procedure TFormSimulateCourse.Image3Click(Sender: TObject);
begin
  FormSimulateCourse.Hide;
  FormKonversi.Show;
end;

end.

