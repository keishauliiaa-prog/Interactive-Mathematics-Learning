unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Math, jpeg;

type
  TMyFunc = function (x:Double):Double;
  TFormGrafik = class(TForm)
    ImageGrafik: TImage;
    ImageX: TImage;
    ImageXKuadrat: TImage;
    ImageSin: TImage;
    ImageCos: TImage;
    ImageTan: TImage;
    ImageClear: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ImageXClick(Sender: TObject);
    procedure ImageXKuadratClick(Sender: TObject);
    procedure ImageSinClick(Sender: TObject);
    procedure ImageCosClick(Sender: TObject);
    procedure ImageTanClick(Sender: TObject);
    procedure ImageClearClick(Sender: TObject);
    procedure ImageGrafikClick(Sender: TObject);
  private
    procedure DrawGraph(Func: TMyFunc;Color : TColor);
    procedure DrawAxes;
  public
  end;

var
  FormGrafik: TFormGrafik;

// Fungsi matematika
function XFunc(x: Double): Double;
function XKuadratFunc(x: Double): Double;
function SinXFunc(x: Double): Double;
function CosXFunc(x: Double): Double;
function TanXFunc(x: Double): Double;

implementation

{$R *.dfm}
procedure TFormGrafik.ImageGrafikClick(Sender: TObject);
begin
   // Buat bitmap kosong baru
  ImageGrafik.Picture.Bitmap := TBitmap.Create;
  ImageGrafik.Picture.Bitmap.Width := ImageGrafik.Width;
  ImageGrafik.Picture.Bitmap.Height := ImageGrafik.Height;

  // Bersihkan canvas
  with ImageGrafik.Picture.Bitmap.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(Rect(0, 0, ImageGrafik.Width, ImageGrafik.Height));
  end;

end;

procedure TFormGrafik.FormCreate(Sender: TObject);
begin
  ImageClearClick(nil); // Bersihkan grafik saat form dibuka
end;

procedure TFormGrafik.DrawAxes;
var
  cx, cy: Integer;
begin
  cx := ImageGrafik.Width div 2;
  cy := ImageGrafik.Height div 2;

  with ImageGrafik.Canvas do
  begin
    Pen.Color := clGray;
    // Gambar sumbu X
    MoveTo(0, cy);
    LineTo(ImageGrafik.Width, cy);
    // Gambar sumbu Y
    MoveTo(cx, 0);
    LineTo(cx, ImageGrafik.Height);
  end;
end;

procedure TFormGrafik.DrawGraph(Func: TMyFunc; Color: TColor);
var
  x, y: Double;
  px, py: Integer;
  cx, cy: Integer;
  scaleX, scaleY: Double;
  step: Double;
  valid: Boolean;
begin
  cx := ImageGrafik.Width div 2;
  cy := ImageGrafik.Height div 2;
  scaleX := 20;
  scaleY := 20;
  step := 0.1;
  valid := False;

  with ImageGrafik.Canvas do
  begin
    Pen.Color := Color;
    x := -cx / scaleX;

    while x <= cx / scaleX do
    begin
      y := Func(x);

      if Abs(y) < 1000 then
      begin
        px := Round(cx + x * scaleX);
        py := Round(cy - y * scaleY);

        if valid then
          LineTo(px, py)
        else
          MoveTo(px, py);

        valid := True;
      end
      else
        valid := False;

      x := x + step;
    end;
  end;
end;

procedure TFormGrafik.ImageXClick(Sender: TObject);
begin
  DrawGraph(@XFunc, clRed);
end;

procedure TFormGrafik.ImageXKuadratClick(Sender: TObject);
begin
  DrawGraph(@XKuadratFunc, clBlue);
end;

procedure TFormGrafik.ImageSinClick(Sender: TObject);
begin
  DrawGraph(@SinXFunc, clGreen);
end;

procedure TFormGrafik.ImageCosClick(Sender: TObject);
begin
  DrawGraph(@CosXFunc, clPurple);
end;

procedure TFormGrafik.ImageTanClick(Sender: TObject);
begin
  DrawGraph(@TanXFunc, clOlive);
end;

procedure TFormGrafik.ImageClearClick(Sender: TObject);
begin
  with ImageGrafik.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(ImageGrafik.ClientRect);
  end;

  DrawAxes;
end;

//
// Fungsi Matematika
//
function xFunc(x: Double): Double;
begin
  Result := x;
end;

function XKuadratFunc(x: Double): Double;
begin
  Result := x * x;
end;

function SinXFunc(x: Double): Double;
begin
  Result := Sin(x);
end;

function CosXFunc(x: Double): Double;
begin
  Result := Cos(x);
end;

function TanXFunc(x: Double): Double;
begin
  Result := Tan(x);
end;



end.

