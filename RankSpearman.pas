unit RankSpearman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormRankSpearman = class(TForm)
    MemoX: TMemo;
    EditSpearmanRho: TEdit;
    MemoY: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRankSpearman: TFormRankSpearman;

implementation

uses Unit76;

{$R *.dfm}


function HitungSpearmanRank(X, Y: array of Double; N: Integer): Double;
var
  RankX, RankY, D, D2: array of Double;
  i: Integer;
  SumD2: Double;

  procedure HitungRank(Data: array of Double; var Rank: array of Double);
  var
    i, j, rankCount: Integer;
  begin
    for i := 0 to N - 1 do
    begin
      rankCount := 1;
      for j := 0 to N - 1 do
        if (j <> i) and (Data[j] < Data[i]) then
          Inc(rankCount);
      Rank[i] := rankCount;
    end;
  end;

begin
  SetLength(RankX, N);
  SetLength(RankY, N);
  SetLength(D, N);
  SetLength(D2, N);

  HitungRank(X, RankX);
  HitungRank(Y, RankY);

  SumD2 := 0;
  for i := 0 to N - 1 do
  begin
    D[i] := RankX[i] - RankY[i];
    D2[i] := D[i] * D[i];
    SumD2 := SumD2 + D2[i];
  end;

  Result := 1 - (6 * SumD2) / (N * (N * N - 1));
end;


procedure TFormRankSpearman.Image3Click(Sender: TObject);

var
  X, Y: array of Double;
  i, N: Integer;
begin
  N := MemoX.Lines.Count;
  if (N <> MemoY.Lines.Count) or (N = 0) then
  begin
    ShowMessage('Jumlah data X dan Y harus sama dan tidak kosong.');
    Exit;
  end;

  SetLength(X, N);
  SetLength(Y, N);
  for i := 0 to N - 1 do
  begin
    X[i] := StrToFloatDef(MemoX.Lines[i], 0);
    Y[i] := StrToFloatDef(MemoY.Lines[i], 0);
  end;

  EditSpearmanRho.Text := FormatFloat('0.0000', HitungSpearmanRank(X, Y, N));
end;



procedure TFormRankSpearman.Image2Click(Sender: TObject);
begin
  FormStatistic.Show;
  FormRankSpearman.Hide;
end;

end.
