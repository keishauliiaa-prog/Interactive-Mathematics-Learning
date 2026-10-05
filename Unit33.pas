unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  jpeg;

type
  TFormKalkulator = class(TForm)
    Edit1: TEdit;
    Image0: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    ImageKoma: TImage;
    ImageTambah: TImage;
    ImageKurang: TImage;
    ImageKali: TImage;
    ImageBagi: TImage;
    ImageSamadengan: TImage;
    ImageC: TImage;
    Image10: TImage;

    procedure Image0Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure ImageTambahClick(Sender: TObject);
    procedure ImageKurangClick(Sender: TObject);
    procedure ImageKaliClick(Sender: TObject);
    procedure ImageBagiClick(Sender: TObject);
    procedure ImageSamadenganClick(Sender: TObject);
    procedure ImageCClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    Operand1: Double;
    Operator: string;
  public
  end;

var
  FormKalkulator: TFormKalkulator;

implementation

uses Unit34;

{$R *.dfm}

procedure TambahAngka(Form: TFormKalkulator; Angka: string);
begin
  Form.Edit1.Text := Form.Edit1.Text + Angka;
end;

procedure TFormKalkulator.Image0Click(Sender: TObject); begin TambahAngka(Self, '0'); end;
procedure TFormKalkulator.Image1Click(Sender: TObject); begin TambahAngka(Self, '1'); end;
procedure TFormKalkulator.Image2Click(Sender: TObject); begin TambahAngka(Self, '2'); end;
procedure TFormKalkulator.Image3Click(Sender: TObject); begin TambahAngka(Self, '3'); end;
procedure TFormKalkulator.Image4Click(Sender: TObject); begin TambahAngka(Self, '4'); end;
procedure TFormKalkulator.Image5Click(Sender: TObject); begin TambahAngka(Self, '5'); end;
procedure TFormKalkulator.Image6Click(Sender: TObject); begin TambahAngka(Self, '6'); end;
procedure TFormKalkulator.Image7Click(Sender: TObject); begin TambahAngka(Self, '7'); end;
procedure TFormKalkulator.Image8Click(Sender: TObject); begin TambahAngka(Self, '8'); end;
procedure TFormKalkulator.Image9Click(Sender: TObject); begin TambahAngka(Self, '9'); end;

procedure TFormKalkulator.ImageTambahClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Edit1.Text);
  Operator := '+';
  Edit1.Clear;
end;

procedure TFormKalkulator.ImageKurangClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Edit1.Text);
  Operator := '-';
  Edit1.Clear;
end;

procedure TFormKalkulator.ImageKaliClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Edit1.Text);
  Operator := '*';
  Edit1.Clear;
end;

procedure TFormKalkulator.ImageBagiClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Edit1.Text);
  Operator := '/';
  Edit1.Clear;
end;

procedure TFormKalkulator.ImageSamadenganClick(Sender: TObject);
var
  Operand2: Double;
  Hasil: Double;
begin
  Operand2 := StrToFloat(Edit1.Text);
  if Operator = '+' then
    Hasil := Operand1 + Operand2
  else if Operator = '-' then
    Hasil := Operand1 - Operand2
  else if Operator = '*' then
    Hasil := Operand1 * Operand2
  else if Operator = '/' then
  begin
    if Operand2 = 0 then
    begin
      Edit1.Text := 'Error';
      Exit;
    end
    else
      Hasil := Operand1 / Operand2;
  end;
  Edit1.Text := FloatToStr(Hasil);
end;

procedure TFormKalkulator.ImageCClick(Sender: TObject);
begin
  Edit1.Clear;
  Operand1 := 0;
  Operator := '';
end;

procedure TFormKalkulator.Image10Click(Sender: TObject);
begin
  FormMathTool.Show;
  FormKalkulator.Hide;
end;

end.
