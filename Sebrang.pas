unit Sebrang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils, jpeg;

const
  PerahuKiriX   = 264;
  PerahuKananX  = 520;
  PerahuY        = 88;
  Posisinya         = 184;

  KiriTikus   = 8;
  KiriKucing  = 176;
  KiriKeju    = 104;

  KananTikus  = 728;
  KananKucing = 816;
  KananKeju   = 888;

type
  TFormTheCatculusChase = class(TForm)
    imgTikus:   TImage;
    imgKucing:  TImage;
    imgKeju:    TImage;
    lblStatus:  TLabel;
    imgPerahu:  TImage;
    Image1:     TImage;
    Image2:     TImage;
    Image3:     TImage;
    Image4:     TImage;
    Image5:     TImage;
    Image6:     TImage;
    Image7:     TImage;

    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    PerahuKiri: Boolean;
    PerahuIsi:  string;
    Posisi: record
      Tikus, Kucing, Keju: Boolean;
    end;

    procedure UpdateStatus;
    procedure CekGame;
    procedure MuatObjek(const AObj: string; AImg: TImage; var APos: Boolean);
  public
  end;

var
  FormTheCatculusChase: TFormTheCatculusChase;

implementation

uses Unit78;

{$R *.dfm}

procedure TFormTheCatculusChase.FormCreate(Sender: TObject);
begin
  PerahuKiri := True;
  PerahuIsi := '';

  Posisi.Tikus := True;
  Posisi.Kucing := True;
  Posisi.Keju := True;

  imgPerahu.Left := PerahuKiriX;
  imgPerahu.Top := PerahuY;

  imgTikus.Left := KiriTikus;
  imgKucing.Left := KiriKucing;
  imgKeju.Left := KiriKeju;

  imgTikus.Top := Posisinya;
  imgKucing.Top := Posisinya;
  imgKeju.Top := Posisinya;

  UpdateStatus;
end;

procedure TFormTheCatculusChase.UpdateStatus;
begin
  lblStatus.Caption := 'Perahu: ' + IfThen(PerahuKiri, 'Kiri', 'Kanan') +
    '   |   Isi: ' + IfThen(PerahuIsi = '', 'Kosong', PerahuIsi);
end;

procedure TFormTheCatculusChase.CekGame;
begin
  if (Posisi.Tikus = Posisi.Kucing) and (Posisi.Tikus <> PerahuKiri) and (PerahuIsi <> 'Tikus') then
  begin
    ShowMessage('Tikus dimakan Kucing! GAME OVER');
    FormCreate(nil);
    Exit;
  end;

  if (Posisi.Tikus = Posisi.Keju) and (Posisi.Tikus <> PerahuKiri) and (PerahuIsi <> 'Tikus') then
  begin
    ShowMessage('Keju dimakan Tikus! GAME OVER');
    FormCreate(nil);
    Exit;
  end;

  if (not Posisi.Tikus) and (not Posisi.Kucing) and (not Posisi.Keju) then
  begin
    ShowMessage('Selamat! Semua berhasil diseberangkan!');
    FormCreate(nil);
    Exit;
  end;

  UpdateStatus;
end;

procedure TFormTheCatculusChase.MuatObjek(const AObj: string; AImg: TImage; var APos: Boolean);
begin
  if (PerahuIsi = '') and (APos = PerahuKiri) then
  begin
    PerahuIsi := AObj;
    APos := not PerahuKiri;

    if PerahuKiri then
      AImg.Left := 288
    else
      AImg.Left := 544;

    AImg.Top := imgPerahu.Top + (imgPerahu.Height div 2) - (AImg.Height div 2);

    UpdateStatus;
  end
  else if (PerahuIsi = AObj) then
  begin
    PerahuIsi := '';
    APos := PerahuKiri;

    if APos then
    begin
      if AObj = 'Tikus'  then AImg.Left := KiriTikus  else
      if AObj = 'Kucing' then AImg.Left := KiriKucing else
      if AObj = 'Keju'   then AImg.Left := KiriKeju;
    end
    else
    begin
      if AObj = 'Tikus'  then AImg.Left := KananTikus  else
      if AObj = 'Kucing' then AImg.Left := KananKucing else
      if AObj = 'Keju'   then AImg.Left := KananKeju;
    end;

    AImg.Top := Posisinya;
    UpdateStatus;
    CekGame;
  end;
end;

procedure TFormTheCatculusChase.Image3Click(Sender: TObject);
begin
  MuatObjek('Tikus', imgTikus, Posisi.Tikus);
end;

procedure TFormTheCatculusChase.Image4Click(Sender: TObject);
begin
  MuatObjek('Kucing', imgKucing, Posisi.Kucing);
end;

procedure TFormTheCatculusChase.Image5Click(Sender: TObject);
begin
  MuatObjek('Keju', imgKeju, Posisi.Keju);
end;

procedure TFormTheCatculusChase.Image2Click(Sender: TObject);
begin
  if PerahuKiri then
  begin
    ShowMessage('Perahu sudah di kiri!');
    Exit;
  end;

  PerahuKiri := True;
  imgPerahu.Left := PerahuKiriX;

  if PerahuIsi = 'Tikus' then
  begin
    imgTikus.Left := 264;
    imgTikus.Top  := 152;
  end
  else if PerahuIsi = 'Kucing' then
  begin
    imgKucing.Left := 288;
    imgKucing.Top  := 136;
  end
  else if PerahuIsi = 'Keju' then
  begin
    imgKeju.Left := 304;
    imgKeju.Top  := 168;
  end;

  CekGame;
end;

procedure TFormTheCatculusChase.Image6Click(Sender: TObject);
begin
  if not PerahuKiri then
  begin
    ShowMessage('Perahu sudah di kanan!');
    Exit;
  end;

  PerahuKiri := False;
  imgPerahu.Left := PerahuKananX;

  if PerahuIsi = 'Tikus' then
  begin
    imgTikus.Left := 544;
    imgTikus.Top  := 152;
  end
  else if PerahuIsi = 'Kucing' then
  begin
    imgKucing.Left := 544;
    imgKucing.Top  := 136;
  end
  else if PerahuIsi = 'Keju' then
  begin
    imgKeju.Left := 552;
    imgKeju.Top  := 168;
  end;

  CekGame;
end;

procedure TFormTheCatculusChase.Image7Click(Sender: TObject);
begin
  FormTheCatculusChase.Hide;
  FormTheCatculusChaseUtama.Show;
end;

end.

