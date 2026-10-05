unit Unit39;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TFormAljabarLinier = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAljabarLinier: TFormAljabarLinier;

implementation

uses UnitDotPro, UnitFChebysevvv, Unit35, MathCal1;

{$R *.dfm}

procedure TFormAljabarLinier.Image2Click(Sender: TObject);
begin
  FormQuickMath.Show;
  FormAljabarLinier.Hide;
end;

procedure TFormAljabarLinier.Image3Click(Sender: TObject);
begin
  FormCalcMat.Show;
  FormAljabarLinier.Hide;
end;

procedure TFormAljabarLinier.Image4Click(Sender: TObject);
begin
  FormAljabarLinier.Hide;
  FormDotPro.SHow;
end;

procedure TFormAljabarLinier.Image5Click(Sender: TObject);
begin
  FormAljabarLinier.Hide;
  FormChebysev.Show;
end;

end.
