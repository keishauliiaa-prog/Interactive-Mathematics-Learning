unit MathCal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Math, jpeg, ExtCtrls;

type
  ArrMat = array of array of Integer;
  ArrMatDbl = array of array of Double;

type
  TFormCalcMat = class(TForm)
    SGA: TStringGrid;
    EditBarisA: TEdit;
    EditKolomA: TEdit;
    EditBarisB: TEdit;
    EditKolomB: TEdit;
    SGB: TStringGrid;
    SGHasil: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditPangkatA: TEdit;
    EditPangkatB: TEdit;
    EditSkalarA: TEdit;
    EditSkalarB: TEdit;
    SGHasil2: TStringGrid;
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
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);

    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  FormCalcMat: TFormCalcMat;

implementation

uses Unit39;

{$R *.dfm}

procedure BacaMatriks(Grid: TStringGrid; var M: ArrMat ; Baris, Kolom: Integer);
var
  i, j: Integer;
begin
  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      M[i][j] := StrToIntDef(Grid.Cells[j, i], 0);
end;

procedure TulisMatriks(Grid: TStringGrid; const M: ArrMat; Baris, Kolom: Integer);
var
  i, j: Integer;
begin
  Grid.ColCount := Kolom;
  Grid.RowCount := Baris;
  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      Grid.Cells[j, i] := IntToStr(M[i][j]);
end;

function Determinan(M: ArrMat; N: Integer): Integer;
var
  i, j, k, det, subdet: Integer;
  SubM: ArrMat;
begin
  if N = 1 then
  begin
    result:= (M[0][0]);
    Exit;
  end;

  if N = 2 then
  begin
    result:=(M[0][0]*M[1][1] - M[0][1]*M[1][0]);
    Exit;
  end;

  det := 0;
  SetLength(SubM, N-1);
  for i := 0 to N - 2 do
    SetLength(SubM[i], N-1);

  for k := 0 to N-1 do
  begin
    for i := 1 to N-1 do
      for j := 0 to N-2 do
        if j < k then
          SubM[i-1][j] := M[i][j]
        else
          SubM[i-1][j] := M[i][j+1];

    subdet := Determinan(SubM, N-1);
    if k mod 2 = 0 then
      det := det + M[0][k] * subdet
    else
      det := det - M[0][k] * subdet;
  end;
  Result := det;
end;

procedure TFormCalcMat.FormCreate(Sender: TObject);
begin
  SGA.ColCount := 6; SGA.RowCount := 6;
  SGB.ColCount := 6; SGB.RowCount := 6;
  SGHasil.ColCount := 6; SGHasil.RowCount := 6;
end;

procedure TFormCalcMat.Image2Click(Sender: TObject);
var
  A, B, C:ArrMat;
  Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 2);
  Kolom := StrToIntDef(EditKolomA.Text, 2);

  if (Baris <> StrToIntDef(EditBarisB.Text, 2)) or (Kolom <> StrToIntDef(EditKolomB.Text, 2)) then
  begin
    ShowMessage('Ukuran A dan B harus sama!');
    Exit;
  end;

  SetLength(A, Baris, Kolom);
  SetLength(B, Baris, Kolom);
  SetLength(C, Baris, Kolom);

  for i := 0 to Baris - 1 do
  begin
    SetLength(A[i], Kolom);
    SetLength(B[i], Kolom);
    SetLength(C[i], Kolom);
  end;

  BacaMatriks(SGA, A, Baris, Kolom);
  BacaMatriks(SGB, B, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      C[i][j] := A[i][j] + B[i][j];

  TulisMatriks(SGHasil, C, Baris, Kolom);
end;

procedure TFormCalcMat.Image3Click(Sender: TObject);
var
  A, B, C: ArrMat;
  Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 2);
  Kolom := StrToIntDef(EditKolomA.Text, 2);

  if (Baris <> StrToIntDef(EditBarisB.Text, 2)) or (Kolom <> StrToIntDef(EditKolomB.Text, 2)) then
  begin
    ShowMessage('Ukuran A dan B harus sama!');
    Exit;
  end;

  SetLength(A, Baris, Kolom);
  SetLength(B, Baris, Kolom);
  SetLength(C, Baris, Kolom);

  for i := 0 to Baris - 1 do
  begin
    SetLength(A[i], Kolom);
    SetLength(B[i], Kolom);
    SetLength(C[i], Kolom);
  end;

  BacaMatriks(SGA, A, Baris, Kolom);
  BacaMatriks(SGB, B, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      C[i][j] := A[i][j] - B[i][j];

  TulisMatriks(SGHasil, C, Baris, Kolom);
end;



procedure TFormCalcMat.Image8Click(Sender: TObject);
var
  A, AT: ArrMat;
  Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 2); // gunakan input user, bukan RowCount
  Kolom := StrToIntDef(EditKolomA.Text, 2);

  SetLength(A, Baris);
  SetLength(AT, Kolom);
  for i := 0 to Baris - 1 do SetLength(A[i], Kolom);
  for i := 0 to Kolom - 1 do SetLength(AT[i], Baris);

  BacaMatriks(SGA, A, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      AT[j][i] := A[i][j];

  SGHasil.RowCount := Kolom;
  SGHasil.ColCount := Baris;
  for i := 0 to SGHasil.RowCount - 1 do
    for j := 0 to SGHasil.ColCount - 1 do
      SGHasil.Cells[j, i] := '';

  TulisMatriks(SGHasil, AT, Kolom, Baris);
end;

procedure TFormCalcMat.Image14Click(Sender: TObject);
var
  B, BT: ArrMat;
  Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisB.Text, 2); // gunakan input user, bukan RowCount
  Kolom := StrToIntDef(EditKolomB.Text, 2);

  SetLength(B, Baris);
  SetLength(BT, Kolom);
  for i := 0 to Baris - 1 do SetLength(B[i], Kolom);
  for i := 0 to Kolom - 1 do SetLength(BT[i], Baris);

  BacaMatriks(SGB, B, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      BT[j][i] := B[i][j];

  SGHasil.RowCount := Kolom;
  SGHasil.ColCount := Baris;
  for i := 0 to SGHasil.RowCount - 1 do
    for j := 0 to SGHasil.ColCount - 1 do
      SGHasil.Cells[j, i] := '';

  TulisMatriks(SGHasil, BT, Kolom, Baris);
end;

procedure TFormCalcMat.Image5Click(Sender: TObject);
var
  A: ArrMat;
  N,i: Integer;
begin
  N := StrToIntDef(EditBarisA.Text, 2);
  if N <> StrToIntDef(EditKolomA.Text, 2) then
  begin
    ShowMessage('Matriks A harus persegi!');
    Exit;
  end;

  SetLength(A, N);
  for i := 0 to N - 1 do
    SetLength(A[i], N);

  BacaMatriks(SGA, A, N, N);
  SGHasil.ColCount := 1;
  SGHasil.RowCount := 1;
  SGHasil.Cells[0, 0] :=IntToStr(Determinan(A, N));
end;

procedure TFormCalcMat.Image11Click(Sender: TObject);
var
  B: ArrMat;
  N, i : Integer;
begin
  N := StrToIntDef(EditBarisB.Text, 2);
  if N <> StrToIntDef(EditKolomB.Text, 2) then
  begin
    ShowMessage('Matriks B harus persegi!');
    Exit;
  end;

  SetLength(B, N);
  for i := 0 to N - 1 do
    SetLength(B[i], N);

  BacaMatriks(SGB, B, N, N);
  SGHasil.ColCount := 1;
  SGHasil.RowCount := 1;
  SGHasil.Cells[0, 0] :=IntToStr(Determinan(B, N));
end;

procedure TFormCalcMat.Image4Click(Sender: TObject);
var
  A, B, C: ArrMat;
  BarisA, KolomA, BarisB, KolomB, i, j, k: Integer;
begin
  BarisA := StrToIntDef(EditBarisA.Text, 2);
  KolomA := StrToIntDef(EditKolomA.Text, 2);
  BarisB := StrToIntDef(EditBarisB.Text, 2);
  KolomB := StrToIntDef(EditKolomB.Text, 2);

  if KolomA <> BarisB then
  begin
    ShowMessage('Kolom A harus sama dengan Baris B!');
    Exit;
  end;

  // Inisialisasi ukuran array
  SetLength(A, BarisA);
  SetLength(B, BarisB);
  SetLength(C, BarisA);

  for i := 0 to BarisA - 1 do SetLength(A[i], KolomA);
  for i := 0 to BarisB - 1 do SetLength(B[i], KolomB);
  for i := 0 to BarisA - 1 do SetLength(C[i], KolomB);

  // Baca nilai dari grid
  BacaMatriks(SGA, A, BarisA, KolomA);
  BacaMatriks(SGB, B, BarisB, KolomB);

  // Hitung perkalian A x B
  for i := 0 to BarisA - 1 do
    for j := 0 to KolomB - 1 do
    begin
      C[i][j] := 0;
      for k := 0 to KolomA - 1 do
        C[i][j] := C[i][j] + A[i][k] * B[k][j];
    end;

  // Kosongkan grid hasil (untuk antisipasi visual)
  SGHasil.ColCount := KolomB;
  SGHasil.RowCount := BarisA;
  for i := 0 to SGHasil.RowCount - 1 do
    for j := 0 to SGHasil.ColCount - 1 do
      SGHasil.Cells[j, i] := '';

  // Tampilkan hasil ke grid
  TulisMatriks(SGHasil, C, BarisA, KolomB);
end;


function Adjoin(const M: ArrMat; N: Integer): ArrMat;
var
  CofactorMat: ArrMat;
  SubM: ArrMat;
  i, j, ii, jj, subi, subj: Integer;
begin
  SetLength(CofactorMat, N);
  for i := 0 to N - 1 do
    SetLength(CofactorMat[i], N);

  SetLength(SubM, N - 1);
  for i := 0 to N - 2 do
    SetLength(SubM[i], N - 1);

  for i := 0 to N - 1 do
    for j := 0 to N - 1 do
    begin
      subi := 0;
      for ii := 0 to N - 1 do
      begin
        if ii = i then Continue;
        subj := 0;
        for jj := 0 to N - 1 do
        begin
          if jj = j then Continue;
          SubM[subi][subj] := M[ii][jj];
          Inc(subj);
        end;
        Inc(subi);
      end;

      CofactorMat[i][j] := Determinan(SubM, N - 1);
      if ((i + j) mod 2) = 1 then
        CofactorMat[i][j] := -CofactorMat[i][j];
    end;

  // Transpose cofactor matrix
  SetLength(Result, N);
  for i := 0 to N - 1 do
    SetLength(Result[i], N);

  for i := 0 to N - 1 do
    for j := 0 to N - 1 do
      Result[i][j] := CofactorMat[j][i];
end;



function InversMatriks(M: ArrMat; N: Integer): ArrMatDbl;
var
  Adj: ArrMat;
  Det: Integer;
  i, j: Integer;
begin
  SetLength(Result, N, N);
  Det := Determinan(M, N);

  if Det = 0 then
  begin
    ShowMessage('Matriks tidak memiliki invers (determinan = 0).');
    Exit;
  end;

  Adj := Adjoin(M, N); // kamu tetap bisa pakai Adjoin versi integer

  for i := 0 to N - 1 do
    for j := 0 to N - 1 do
      Result[i][j] := Adj[i][j] / Det; // hasil akhirnya pecahan
end;

procedure TulisMatriksDouble(Grid: TStringGrid; const M: ArrMatDbl; Baris, Kolom: Integer);
var
  i, j: Integer;
begin
  Grid.ColCount := Kolom;
  Grid.RowCount := Baris;
  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      Grid.Cells[j, i] := FormatFloat('0.00', M[i][j]); // tampilkan 2 angka di belakang koma
end;

procedure TFormCalcMat.Image6Click(Sender: TObject);
var
  A: ArrMat;
  Invers: ArrMatDbl;
  N, i: Integer;
begin
  N := StrToIntDef(EditBarisA.Text, 0);
  if N <> StrToIntDef(EditKolomA.Text, 0) then
  begin
    ShowMessage('Matriks A harus persegi!');
    Exit;
  end;

  SetLength(A, N);
  for i := 0 to N - 1 do
    SetLength(A[i], N);

  BacaMatriks(SGA, A, N, N); // ? gunakan cara lama (var)

  Invers := InversMatriks(A, N); // proses invers hasilnya pecahan

  if Length(Invers) > 0 then
    TulisMatriksDouble(SGHasil, Invers, N, N); // tampilkan hasil
end;



procedure TFormCalcMat.Image12Click(Sender: TObject);
var
  B: ArrMat;
  Invers: ArrMatDbl;
  N, i: Integer;
begin
  N := StrToIntDef(EditBarisB.Text, 0);
  if N <> StrToIntDef(EditKolomB.Text, 0) then
  begin
    ShowMessage('Matriks B harus persegi!');
    Exit;
  end;

  SetLength(B, N);
  for i := 0 to N - 1 do
    SetLength(B[i], N);

  BacaMatriks(SGB, B, N, N); // ? gunakan cara lama (var)

  Invers := InversMatriks(B, N); // proses invers hasilnya pecahan

  if Length(Invers) > 0 then
    TulisMatriksDouble(SGHasil, Invers, N, N); // tampilkan hasil
end;



function PangkatMatriks(M: ArrMat; N, Pangkat: Integer): ArrMat;
var
  ResultMat, Temp: ArrMat;
  i, j, k, l: Integer;
begin
  // Matriks identitas jika pangkat = 0
  if Pangkat = 0 then
  begin
    SetLength(ResultMat, N);
    for i := 0 to N - 1 do
    begin
      SetLength(ResultMat[i], N);
      for j := 0 to N - 1 do
        if i = j then
          ResultMat[i][j] := 1
        else
          ResultMat[i][j] := 0;
    end;
    Result := ResultMat;
    Exit;
  end;

  // Awali hasil dengan matrix M
  ResultMat := M;

  for k := 2 to Pangkat do
  begin
    // Kalikan ResultMat := ResultMat * M
    SetLength(Temp, N);
    for i := 0 to N - 1 do
    begin
      SetLength(Temp[i], N);
      for j := 0 to N - 1 do
      begin
        Temp[i][j] := 0;
        for l := 0 to N - 1 do
          Temp[i][j] := Temp[i][j] + ResultMat[i][l] * M[l][j];
      end;
    end;
    ResultMat := Temp; // aman karena Temp di-set baru tiap loop
  end;

  Result := ResultMat;
end;



procedure TFormCalcMat.Image19Click(Sender: TObject);
var
  A, Hasil: ArrMat;
  N, Pangkat, i: Integer;
begin
  N := StrToIntDef(EditBarisA.Text, 0);
  if N <> StrToIntDef(EditKolomA.Text, 0) then
  begin
    ShowMessage('Matriks A harus persegi!');
    Exit;
  end;

  Pangkat := StrToIntDef(EditPangkatA.Text, 1);
  if Pangkat < 0 then
  begin
    ShowMessage('Hanya menerima pangkat bulat positif!');
    Exit;
  end;

  SetLength(A, N);
  for i := 0 to N - 1 do
    SetLength(A[i], N);

  BacaMatriks(SGA, A, N, N);
  Hasil := PangkatMatriks(A, N, Pangkat);
  TulisMatriks(SGHasil, Hasil, N, N);
end;

procedure TFormCalcMat.Image22Click(Sender: TObject);
var
  B, Hasil: ArrMat;
  N, Pangkat, i: Integer;
begin
  N := StrToIntDef(EditBarisB.Text, 0);
  if N <> StrToIntDef(EditKolomB.Text, 0) then
  begin
    ShowMessage('Matriks B harus persegi!');
    Exit;
  end;

  Pangkat := StrToIntDef(EditPangkatB.Text, 1);
  if Pangkat < 0 then
  begin
    ShowMessage('Hanya menerima pangkat bulat positif!');
    Exit;
  end;

  SetLength(B, N);
  for i := 0 to N - 1 do
    SetLength(B[i], N);

  BacaMatriks(SGB, B, N, N);
  Hasil := PangkatMatriks(B, N, Pangkat);
  TulisMatriks(SGHasil, Hasil, N, N);
end;


function SkalarMatriks(M: ArrMatDbl; N: Integer; Skalar: Double): ArrMatDbl;
var
  i, j: Integer;
  ResultMat: ArrMatDbl;
begin
  SetLength(ResultMat, N);
  for i := 0 to N - 1 do
  begin
    SetLength(ResultMat[i], N);
    for j := 0 to N - 1 do
      ResultMat[i][j] := M[i][j] * Skalar;
  end;
  Result := ResultMat;
end;



procedure TFormCalcMat.Image18Click(Sender: TObject);
var
  A, Hasil: ArrMat;
  Skalar, Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 2);
  Kolom := StrToIntDef(EditKolomA.Text, 2);
  Skalar := StrToIntDef(EditSkalarA.Text, 1); // default 1 jika kosong atau salah

  SetLength(A, Baris, Kolom);
  SetLength(Hasil, Baris, Kolom);
  for i := 0 to Baris - 1 do
  begin
    SetLength(A[i], Kolom);
    SetLength(Hasil[i], Kolom);
  end;

  BacaMatriks(SGA, A, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      Hasil[i][j] := A[i][j] * Skalar;

  TulisMatriks(SGHasil, Hasil, Baris, Kolom);
end;



procedure TFormCalcMat.Image21Click(Sender: TObject);
var
  B, Hasil: ArrMat;
  Skalar, Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisB.Text, 2);
  Kolom := StrToIntDef(EditKolomB.Text, 2);
  Skalar := StrToIntDef(EditSkalarB.Text, 1); // default 1 jika kosong atau salah

  SetLength(B, Baris, Kolom);
  SetLength(Hasil, Baris, Kolom);
  for i := 0 to Baris - 1 do
  begin
    SetLength(B[i], Kolom);
    SetLength(Hasil[i], Kolom);
  end;

  BacaMatriks(SGB, B, Baris, Kolom);

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      Hasil[i][j] := B[i][j] * Skalar;

  TulisMatriks(SGHasil, Hasil, Baris, Kolom);
end;


procedure TFormCalcMat.Image10Click(Sender: TObject);
var
  A, L, U: array[1..6, 1..6] of Double;
  n, i, j, k: Integer;
  sum: Double;
begin
  n := StrToInt(EditBarisA.Text); // Asumsikan matriks A persegi

  // Ambil input dari SGA ke matriks A
  for i := 1 to n do
    for j := 1 to n do
      A[i,j] := StrToFloat(SGA.Cells[j-1, i-1]);

  // Inisialisasi L dan U
  for i := 1 to n do
    for j := 1 to n do
    begin
      L[i,j] := 0;
      U[i,j] := 0;
    end;

  // Proses dekomposisi LU (Doolittle method)
  for i := 1 to n do
  begin
    // U matrix
    for k := i to n do
    begin
      sum := 0;
      for j := 1 to i - 1 do
        sum := sum + L[i,j] * U[j,k];
      U[i,k] := A[i,k] - sum;
    end;

    // L matrix
    for k := i to n do
    begin
      if i = k then
        L[i,i] := 1 // Diagonal L selalu 1
      else
      begin
        sum := 0;
        for j := 1 to i - 1 do
          sum := sum + L[k,j] * U[j,i];
        L[k,i] := (A[k,i] - sum) / U[i,i];
      end;
    end;
  end;

  // Tampilkan L di SGHasil
  SGHasil.RowCount := n;
  SGHasil.ColCount := n;
  for i := 1 to n do
    for j := 1 to n do
      SGHasil.Cells[j-1, i-1] := FloatToStrF(L[i,j], ffFixed, 8, 4);

  // Tampilkan U di SGHasil2
  SGHasil2.RowCount := n;
  SGHasil2.ColCount := n;
  for i := 1 to n do
    for j := 1 to n do
      SGHasil2.Cells[j-1, i-1] := FloatToStrF(U[i,j], ffFixed, 8, 4);
end;

function HitungRank(M: ArrMat; Baris, Kolom: Integer): Integer;
var
  i, j, k, lead, temp, r: Integer;
  tmp: Integer;
  A: ArrMat;
begin
  SetLength(A, Baris);
  for i := 0 to Baris - 1 do
  begin
    SetLength(A[i], Kolom);
    for j := 0 to Kolom - 1 do
      A[i][j] := M[i][j];
  end;

  lead := 0;
  r := Baris;

  for i := 0 to r - 1 do
  begin
    if lead >= Kolom then
      Break;

    j := i;
    while (A[j][lead] = 0) do
    begin
      Inc(j);
      if j = r then
      begin
        j := i;
        Inc(lead);
        if lead = Kolom then
        begin
          Result := i;
          Exit;
        end;
      end;
    end;

    // Swap baris i dan j
    for k := 0 to Kolom - 1 do
    begin
      tmp := A[i][k];
      A[i][k] := A[j][k];
      A[j][k] := tmp;
    end;

    // Ubah baris i ke bentuk leading one
    tmp := A[i][lead];
    if tmp <> 0 then
      for k := 0 to Kolom - 1 do
        A[i][k] := A[i][k] div tmp;

    // Eliminasi baris lain
    for j := 0 to r - 1 do
    begin
      if j <> i then
      begin
        tmp := A[j][lead];
        for k := 0 to Kolom - 1 do
          A[j][k] := A[j][k] - tmp * A[i][k];
      end;
    end;

    Inc(lead);
  end;

  // Hitung baris tidak nol
  Result := 0;
  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      if A[i][j] <> 0 then
      begin
        Inc(Result);
        Break;
      end;
end;




procedure TFormCalcMat.Image7Click(Sender: TObject);
var
  A: ArrMat;
  Baris, Kolom, i: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 0);
  Kolom := StrToIntDef(EditKolomA.Text, 0);

  SetLength(A, Baris);
  for i := 0 to Baris - 1 do
    SetLength(A[i], Kolom);

  BacaMatriks(SGA, A, Baris, Kolom);
  SGHasil.ColCount := 1;
  SGHasil.RowCount := 1;
  SGHasil.Cells[0, 0] :=IntToStr(HitungRank(A, Baris, Kolom));
end;



procedure TFormCalcMat.Image13Click(Sender: TObject);
var
  B: ArrMat;
  Baris, Kolom, i: Integer;
begin
  Baris := StrToIntDef(EditBarisB.Text, 0);
  Kolom := StrToIntDef(EditKolomB.Text, 0);

  SetLength(B, Baris);
  for i := 0 to Baris - 1 do
    SetLength(B[i], Kolom);

  BacaMatriks(SGB, B, Baris, Kolom);
  SGHasil.ColCount := 1;
  SGHasil.RowCount := 1;
  SGHasil.Cells[0, 0] :=IntToStr(HitungRank(B, Baris, Kolom));
end;


function BentukEselon(M: ArrMat; Baris, Kolom: Integer): ArrMat;
var
  i, j, k, lead, temp: Integer;
  A: ArrMat;
  factor: Integer;
begin
  SetLength(A, Baris);
  for i := 0 to Baris - 1 do
  begin
    SetLength(A[i], Kolom);
    for j := 0 to Kolom - 1 do
      A[i][j] := M[i][j];
  end;

  lead := 0;

  for i := 0 to Baris - 1 do
  begin
    if lead >= Kolom then Break;
    j := i;

    while (A[j][lead] = 0) do
    begin
      Inc(j);
      if j = Baris then
      begin
        j := i;
        Inc(lead);
        if lead = Kolom then
          Break;
      end;
    end;

    // Swap baris i dan j
    for k := 0 to Kolom - 1 do
    begin
      temp := A[i][k];
      A[i][k] := A[j][k];
      A[j][k] := temp;
    end;

    // Normalisasi baris i
    if A[i][lead] <> 0 then
    begin
      temp := A[i][lead];
      for k := 0 to Kolom - 1 do
        A[i][k] := A[i][k] div temp;
    end;

    // Eliminasi baris di bawah i
    for j := i + 1 to Baris - 1 do
    begin
      factor := A[j][lead];
      for k := 0 to Kolom - 1 do
        A[j][k] := A[j][k] - factor * A[i][k];
    end;

    Inc(lead);
  end;

  Result := A;
end;


procedure TFormCalcMat.Image9Click(Sender: TObject);
var
  A, Eselon: ArrMat;
  Baris, Kolom, i, j, Hasil: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 0);
  Kolom := StrToIntDef(EditKolomA.Text, 0);

  SetLength(A, Baris);
  for i := 0 to Baris - 1 do
    SetLength(A[i], Kolom);

  BacaMatriks(SGA, A, Baris, Kolom);
  Eselon := BentukEselon(A, Baris, Kolom);
  TulisMatriks(SGHasil, Eselon, Baris, Kolom);
end;



procedure TFormCalcMat.Image15Click(Sender: TObject);

var
  B, Eselon: ArrMat;
  Baris, Kolom, i, j: Integer;
begin
  Baris := StrToIntDef(EditBarisB.Text, 0);
  Kolom := StrToIntDef(EditKolomB.Text, 0);

  SetLength(B, Baris);
  for i := 0 to Baris - 1 do
    SetLength(B[i], Kolom);

  BacaMatriks(SGB, B, Baris, Kolom);
  Eselon := BentukEselon(B, Baris, Kolom);
  TulisMatriks(SGHasil, Eselon, Baris, Kolom);
end;


function IsDiagonalMatrix(M: ArrMat; Baris, Kolom: Integer): Boolean;
var
  i, j: Integer;
begin
  if Baris <> Kolom then
  begin
    Exit;
  end;

  for i := 0 to Baris - 1 do
    for j := 0 to Kolom - 1 do
      if (i <> j) and (M[i][j] <> 0) then
      begin
        Exit;
      end;
      
  Result := True;
end;




procedure TFormCalcMat.Image17Click(Sender: TObject);
var
  A: ArrMat;
  Baris, Kolom, i: Integer;
begin
  Baris := StrToIntDef(EditBarisA.Text, 0);
  Kolom := StrToIntDef(EditKolomA.Text, 0);

  SetLength(A, Baris);
  for i := 0 to Baris - 1 do
    SetLength(A[i], Kolom);

  BacaMatriks(SGA, A, Baris, Kolom);

  if IsDiagonalMatrix(A, Baris, Kolom) then
    ShowMessage('Matriks A adalah matriks diagonal.')
  else
    ShowMessage('Matriks A bukan matriks diagonal.');
end;

procedure TFormCalcMat.Image20Click(Sender: TObject);
var
  B: ArrMat;
  Baris, Kolom, i: Integer;
begin
  Baris := StrToIntDef(EditBarisB.Text, 0);
  Kolom := StrToIntDef(EditKolomB.Text, 0);

  SetLength(B, Baris);
  for i := 0 to Baris - 1 do
    SetLength(B[i], Kolom);

  BacaMatriks(SGB, B, Baris, Kolom);

  if IsDiagonalMatrix(B, Baris, Kolom) then
    ShowMessage('Matriks B adalah matriks diagonal.')
  else
    ShowMessage('Matriks B bukan matriks diagonal.');
end;

procedure TFormCalcMat.Image16Click(Sender: TObject);
var
  B, L, U:  array[1..6, 1..6] of Double;
  n, i, j, k: Integer;
  sum: Double;
begin
  n := StrToInt(EditBarisB.Text); // Asumsikan matriks A persegi

  // Ambil input dari SGA ke matriks A
  for i := 1 to n do
    for j := 1 to n do
      B[i,j] := StrToFloat(SGB.Cells[j-1, i-1]);

  // Inisialisasi L dan U
  for i := 1 to n do
    for j := 1 to n do
    begin
      L[i,j] := 0;
      U[i,j] := 0;
    end;

  // Proses dekomposisi LU (Doolittle method)
  for i := 1 to n do
  begin
    // U matrix
    for k := i to n do
    begin
      sum := 0;
      for j := 1 to i - 1 do
        sum := sum + L[i,j] * U[j,k];
      U[i,k] := B[i,k] - sum;
    end;

    // L matrix
    for k := i to n do
    begin
      if i = k then
        L[i,i] := 1 // Diagonal L selalu 1
      else
      begin
        sum := 0;
        for j := 1 to i - 1 do
          sum := sum + L[k,j] * U[j,i];
        L[k,i] := (B[k,i] - sum) / U[i,i];
      end;
    end;
  end;

  // Tampilkan L di SGHasil
  SGHasil.RowCount := n;
  SGHasil.ColCount := n;
  for i := 1 to n do
    for j := 1 to n do
      SGHasil.Cells[j-1, i-1] := FloatToStrF(L[i,j], ffFixed, 8, 4);

  // Tampilkan U di SGHasil2
  SGHasil2.RowCount := n;
  SGHasil2.ColCount := n;
  for i := 1 to n do
    for j := 1 to n do
      SGHasil2.Cells[j-1, i-1] := FloatToStrF(U[i,j], ffFixed, 8, 4);
end;












procedure TFormCalcMat.Image23Click(Sender: TObject);
begin
  FormCalcMat.Hide;
  FormAljabarLinier.Show;
end;

procedure TFormCalcMat.Button1Click(Sender: TObject);
begin

  SGHasil.RowCount := 1;
  SGHasil.ColCount := 1;
  SGHasil.Cells[0,0] := '';

  SGHasil2.RowCount := 1;
  SGHasil2.ColCount := 1;
  SGHasil2.Cells[0,0] := '';
end;

end.

