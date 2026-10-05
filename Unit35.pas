unit Unit35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormQuickMath = class(TForm)
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
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQuickMath: TFormQuickMath;

implementation

uses Unit36, Unit34, Unit41, Unit45, Unit48, Unit66, Unit38, Unit39,
  Unit76, UnitBeneran;

{$R *.dfm}

procedure TFormQuickMath.Image2Click(Sender: TObject);
begin
  FormQuickMath.Hide;
  FormBeneranGrafik.Show;
end;

procedure TFormQuickMath.Image4Click(Sender: TObject);
begin
  FormKonversi.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image6Click(Sender: TObject);
begin
  FormMathTool.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image7Click(Sender: TObject);
begin
  FormAritmetikaDanFungsi.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image8Click(Sender: TObject);
begin
  FormFPBdanKPK.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image9Click(Sender: TObject);
begin
  FormBRuang.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image10Click(Sender: TObject);
begin
 FormQuickMath.Hide;
 FormPrima.Show;
end;

procedure TFormQuickMath.Image3Click(Sender: TObject);
begin
  FormAljabarLinier.Show;
  FormQuickMath.Hide;
end;

procedure TFormQuickMath.Image5Click(Sender: TObject);
begin
  FormStatistic.Show;
  FormQuickMath.Hide;
end;

end.
