unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMathTool = class(TForm)
    ImageBg: TImage;
    ImageCalculator: TImage;
    ImageQuickMath: TImage;
    Image1: TImage;
    procedure ImageCalculatorClick(Sender: TObject);
    procedure ImageQuickMathClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMathTool: TFormMathTool;

implementation

uses Unit33, Unit35, Unit4;

{$R *.dfm}

procedure TFormMathTool.ImageCalculatorClick(Sender: TObject);
begin
  FormMathTool.Hide;
  FormKalkulator.Show;
end;

procedure TFormMathTool.ImageQuickMathClick(Sender: TObject);
begin
  FormMathTool.Hide;
  FormQuickMath.Show;

end;

procedure TFormMathTool.Image1Click(Sender: TObject);
begin
  FormMathTool.Hide;
  FormMathCraft.Show;
end;

end.
