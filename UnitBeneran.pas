unit UnitBeneran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormBeneranGrafik = class(TForm)
    ImageBg: TImage;
    Image1: TImage;
    ButtonSumbu: TButton;
    ButtonYX: TButton;
    ButtonKuadrat: TButton;
    ButtonSinX: TButton;
    ButtonCosX: TButton;
    ButtonTanX: TButton;
    ButtonXcube: TButton;
    ButtonClear: TButton;
    Image2: TImage;
    procedure ButtonSumbuClick(Sender: TObject);
    procedure ButtonYXClick(Sender: TObject);
    procedure ButtonKuadratClick(Sender: TObject);
    procedure ButtonSinXClick(Sender: TObject);
    procedure ButtonCosXClick(Sender: TObject);
    procedure ButtonTanXClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonXcubeClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBeneranGrafik: TFormBeneranGrafik;

implementation

uses Unit35;

{$R *.dfm}

 function CanvasX(LojikX: Double): Integer;
  begin
    Result := Round(LojikX + 200);
  end;

  function CanvasY(LojikY: Double): Integer;
  begin
    Result := Round(200 - LojikY);
  end;


procedure TFormBeneranGrafik.ButtonSumbuClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    MoveTo(CanvasX(-200), CanvasY(0)); // Sumbu X
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200)); // Sumbu Y
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');
  end;
end;

procedure TFormBeneranGrafik.ButtonYXClick(Sender: TObject);
var
  i: Integer;
begin
  with Image1.Canvas do
  begin
    // Menggambar sumbu
    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    // Menggambar grafik y = x
    for i := -200 to 200 do
      Pixels[CanvasX(i), CanvasY(i)] := clRed;
  end;
end;

procedure TFormBeneranGrafik.ButtonKuadratClick(Sender: TObject);
var
  i: Double;
begin
  with Image1.Canvas do
  begin
    // Menggambar sumbu
    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    // Menggambar grafik y = x²
    i := -200;
    while i <= 400 do
    begin
      Pixels[CanvasX(100*i), CanvasY(100*i*i)] := clFuchsia;
      i := i + 0.01;
    end;
  end;
end;



procedure TFormBeneranGrafik.ButtonSinXClick(Sender: TObject);
var
  i: Double;
begin
  with Image1.Canvas do
  begin
    // Menggambar sumbu
    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    // Menggambar grafik y = sin(x)
    i := -200;
    while i <= 400 do
    begin
      Pixels[CanvasX(30 * i), CanvasY(100 * sin(i))] := clblue;
      i := i + 0.01;
    end;
  end;
end;


procedure TFormBeneranGrafik.ButtonCosXClick(Sender: TObject);
var
  i: Double;
begin
  with Image1.Canvas do
  begin
    // Menggambar sumbu
    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    // Menggambar grafik y = cos(x)
    i := -10;
    while i <= 10 do
    begin
      Pixels[CanvasX(30 * i), CanvasY(100 * cos(i))] := clGreen;
      i := i + 0.01;
    end;
  end;
end;


procedure TFormBeneranGrafik.ButtonTanXClick(Sender: TObject);
var
  i: Double;
begin
  with Image1.Canvas do
  begin

    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    // Menggambar grafik y = tan(x)
     i := -10;
     while i <= 10 do
     begin
        Pixels [CanvasX(25*i), CanvasY(50*(sin(i)/cos(i)))] := clYellow;
        i := i + 0.01;
     end;
  end;
end;

procedure TFormBeneranGrafik.ButtonClearClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clWhite;
    Rectangle(0, 0, 401, 401);
    Pen.Color := clBlack;

    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');
  end;
end;

procedure TFormBeneranGrafik.ButtonXcubeClick(Sender: TObject);
var
  i: Double;
begin
  with Image1.Canvas do
  begin
    MoveTo(CanvasX(-200), CanvasY(0));
    LineTo(CanvasX(200), CanvasY(0));

    MoveTo(CanvasX(0), CanvasY(-200));
    LineTo(CanvasX(0), CanvasY(200));

    TextOut(205, 203, '0  (0,0)');
    TextOut(390, 203, 'X');
    TextOut(210, 7, 'Y');

    i := -200;
    while i <= 400 do
    begin
      Pixels[CanvasX(100 * i), CanvasY(20 * i * i * i)] := clSilver;
      i := i + 0.01;
    end;
  end;
end;



procedure TFormBeneranGrafik.Image2Click(Sender: TObject);
begin
  FormBeneranGrafik.Hide;
  FormQuickMath.Show;
end;

end.
