unit Unit45;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormFPBdanKPK = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFPBdanKPK: TFormFPBdanKPK;

implementation

uses Unit35;

{$R *.dfm}

procedure TFormFPBdanKPK.Image2Click(Sender: TObject);
begin
  FormQuickMath.Show;
  FormFPBdanKPK.Hide;
end;

procedure TFormFPBdanKPK.Button1Click(Sender: TObject);
var
  a, b, temp, fpb: Integer;
begin
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);

  a := Abs(a);
  b := Abs(b);

  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp;
  end;

  fpb := a;

  Edit3.Text := IntToStr(fpb);
end;


procedure TFormFPBdanKPK.Button2Click(Sender: TObject);
var
  a, b, x, y, temp, fpb, kpk: Integer;
begin
  if not TryStrToInt(Edit1.Text, x) or not TryStrToInt(Edit2.Text, y) then
  begin
    ShowMessage('Masukkan dua angka bulat yang valid!');
    Exit;
  end;

  a := Abs(x);
  b := Abs(y);

  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp;
  end;
  fpb := a;

  if fpb <> 0 then
    kpk := (Abs(x) * Abs(y)) div fpb
  else
    kpk := 0;

  Edit4.Text := IntToStr(kpk);
end;
end.
