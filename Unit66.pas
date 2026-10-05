unit Unit66;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormPrima = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrima: TFormPrima;

implementation

uses Unit35, Unit67, Unit74, Unit77;

{$R *.dfm}

procedure TFormPrima.Image2Click(Sender: TObject);
begin
  FormPrima.Hide;
  FormQuickMath.Show;
end;

procedure TFormPrima.Image3Click(Sender: TObject);
begin
  FormPrima.Hide;
  FormDaftarPrima.Show;
end;

procedure TFormPrima.Image4Click(Sender: TObject);
begin
  FormPrima.Hide;
  FormCekPrima.Show;
end;

end.
