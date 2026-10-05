unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, math;

type
  TFormBilBerpangkat = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBilBerpangkat: TFormBilBerpangkat;

implementation

uses Unit21, Unit41;

{$R *.dfm}

procedure TFormBilBerpangkat.Image2Click(Sender: TObject);
begin
  FormAritmetikaDanFungsi.Show;
  FormBilBerpangkat.Hide;
end;

procedure TFormBilBerpangkat.Button1Click(Sender: TObject);
var
  Bilangan, Pangkat, I: Integer;
  Hasil: Integer;
begin
  if TryStrToInt(Edit1.Text, Bilangan) and TryStrToInt(Edit2.Text, Pangkat) then
  begin
    Hasil := 1;

    if Pangkat >= 0 then
    begin
      for I := 1 to Pangkat do
        Hasil := Hasil * Bilangan;
      Edit3.Text := IntToStr(Hasil);
    end
    else
    begin
      ShowMessage('Pangkat negatif belum didukung di versi ini.');
    end;
  end
  else
    ShowMessage('Masukkan bilangan bulat yang valid!');
end;

end.
