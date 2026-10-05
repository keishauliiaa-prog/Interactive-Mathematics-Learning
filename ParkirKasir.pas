unit ParkirKasir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormParkirPay = class(TForm)
    EditJamIn: TEdit;
    EditMenitIn: TEdit;
    EditDetikIn: TEdit;
    EditJamOut: TEdit;
    EditMenitOut: TEdit;
    EditDetikOut: TEdit;
    EditUangBayar: TEdit;
    MemoStruk: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    TotalBiayaParkir: Integer;
  public
  end;

var
  FormParkirPay: TFormParkirPay;

implementation

uses Unit80;

{$R *.dfm}

procedure TFormParkirPay.Image2Click(Sender: TObject);
const
  TARIF_PER_JAM = 2000;
var
  J1, M1, D1, J2, M2, D2: Integer;
  tdm, tdk, selisih: Integer;
  DJ, DM, DD: Integer;
begin
  try
    J1 := StrToInt(EditJamIn.Text);
    M1 := StrToInt(EditMenitIn.Text);
    D1 := StrToInt(EditDetikIn.Text);

    J2 := StrToInt(EditJamOut.Text);
    M2 := StrToInt(EditMenitOut.Text);
    D2 := StrToInt(EditDetikOut.Text);
  except
    ShowMessage('Semua input waktu harus angka!');
    Exit;
  end;

  tdm := (J1 * 3600) + (M1 * 60) + D1;
  tdk := (J2 * 3600) + (M2 * 60) + D2;
  if tdk < tdm then
    tdk := tdk + 86400;

  selisih := tdk - tdm;
  DJ := selisih div 3600;
  selisih := selisih mod 3600;
  DM := selisih div 60;
  DD := selisih mod 60;

  if DM > 0 then
    TotalBiayaParkir := (DJ + 1) * TARIF_PER_JAM
  else
    TotalBiayaParkir := DJ * TARIF_PER_JAM;

  MemoStruk.Clear;
  MemoStruk.Lines.Add('===== STRUK PARKIR =====');
  MemoStruk.Lines.Add(Format('Waktu Masuk   : %0.2d:%0.2d:%0.2d', [J1, M1, D1]));
  MemoStruk.Lines.Add(Format('Waktu Keluar  : %0.2d:%0.2d:%0.2d', [J2, M2, D2]));
  MemoStruk.Lines.Add(Format('Lama Parkir   : %d jam, %d menit, %d detik', [DJ, DM, DD]));
  MemoStruk.Lines.Add(Format('Biaya Parkir  : Rp %d', [TotalBiayaParkir]));
  MemoStruk.Lines.Add('');
  MemoStruk.Lines.Add('Silakan input Uang Bayar, lalu klik "Bayar"');
end;

procedure TFormParkirPay.Image3Click(Sender: TObject);
var
  UangBayar, Kembalian: Integer;
  srts, lp, dp, sp, l, d, s: Integer;
begin

  if TotalBiayaParkir = 0 then
  begin
    ShowMessage('Klik dulu tombol HITUNG untuk mendapatkan biaya parkir.');
    Exit;
  end;

  try
    UangBayar := StrToInt(EditUangBayar.Text);
  except
    ShowMessage('Masukkan jumlah uang bayar (angka)!');
    Exit;
  end;

  if UangBayar < TotalBiayaParkir then
  begin
    ShowMessage('Uang tidak cukup untuk membayar biaya parkir!');
    Exit;
  end;

  Kembalian := UangBayar - TotalBiayaParkir;

  MemoStruk.Lines.Add('');
  MemoStruk.Lines.Add('===== PEMBAYARAN =====');
  MemoStruk.Lines.Add(Format('Uang Dibayar  : Rp %d', [UangBayar]));
  MemoStruk.Lines.Add(Format('Kembalian     : Rp %d', [Kembalian]));

  srts := Kembalian div 100000; Kembalian := Kembalian mod 100000;
  lp   := Kembalian div 50000;  Kembalian := Kembalian mod 50000;
  dp   := Kembalian div 20000;  Kembalian := Kembalian mod 20000;
  sp   := Kembalian div 10000;  Kembalian := Kembalian mod 10000;
  l    := Kembalian div 5000;   Kembalian := Kembalian mod 5000;
  d    := Kembalian div 2000;   Kembalian := Kembalian mod 2000;
  s    := Kembalian div 1000;   Kembalian := Kembalian mod 1000;
  MemoStruk.Lines.Add('');

  MemoStruk.Lines.Add('Pecahan Uang Kembalian :');
  if srts > 0 then MemoStruk.Lines.Add(IntToStr(srts)+' lembar Rp 100.000');
  if lp   > 0 then MemoStruk.Lines.Add(IntToStr(lp)  +' lembar Rp  50.000');
  if dp   > 0 then MemoStruk.Lines.Add(IntToStr(dp)  +' lembar Rp  20.000');
  if sp   > 0 then MemoStruk.Lines.Add(IntToStr(sp)  +' lembar Rp  10.000');
  if l    > 0 then MemoStruk.Lines.Add(IntToStr(l)   +' lembar Rp   5.000');
  if d    > 0 then MemoStruk.Lines.Add(IntToStr(d)   +' lembar Rp   2.000');
  if s    > 0 then MemoStruk.Lines.Add(IntToStr(s)   +' lembar Rp   1.000');
end;




procedure TFormParkirPay.Image4Click(Sender: TObject);
begin
  FormParkirPay.Hide;
  FormStartMatch.Show;
end;

end.
