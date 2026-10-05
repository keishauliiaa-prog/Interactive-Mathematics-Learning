unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMathPioneers = class(TForm)
    Image1: TImage;
    ImageDiophantus: TImage;
    ImageFibonacci: TImage;
    ImageLagrange: TImage;
    ImageGauss: TImage;
    ImageHippasus: TImage;
    ImageAlKhawarizmi: TImage;
    ImageRiemann: TImage;
    ImageDescartes: TImage;
    ImageBack: TImage;
    procedure ImageAlKhawarizmiClick(Sender: TObject);
    procedure ImageBackClick(Sender: TObject);
    procedure ImageDiophantusClick(Sender: TObject);
    procedure ImageFibonacciClick(Sender: TObject);
    procedure ImageLagrangeClick(Sender: TObject);
    procedure ImageDescartesClick(Sender: TObject);
    procedure ImageRiemannClick(Sender: TObject);
    procedure ImageGaussClick(Sender: TObject);
    procedure ImageHippasusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMathPioneers: TFormMathPioneers;

implementation

uses Unit8, Unit6, Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15;

{$R *.dfm}

procedure TFormMathPioneers.ImageAlKhawarizmiClick(Sender: TObject);
begin
  FormMathPioneers.Hide;
  FormAlKhawarizmi.Show;

end;

procedure TFormMathPioneers.ImageBackClick(Sender: TObject);
begin
  FormMathPioneers.Hide ;
  FormMathWorld.Show ;

end;

procedure TFormMathPioneers.ImageDiophantusClick(Sender: TObject);
begin
  FormMathPioneers.Hide;
  FormDiophantus.Show;
end;

procedure TFormMathPioneers.ImageFibonacciClick(Sender: TObject);
begin
  FormMathPioneers.Hide;
  FormFibonacci.Show;
end;

procedure TFormMathPioneers.ImageLagrangeClick(Sender: TObject);
begin
  FormMathPioneers.Hide;
  FormLagrange.Show;
end;

procedure TFormMathPioneers.ImageDescartesClick(Sender: TObject);
begin
  FormMathPioneers.Hide;
  FormDescartes.Show;
end;

procedure TFormMathPioneers.ImageRiemannClick(Sender: TObject);
begin
   FormMathPioneers.Hide;
   FormRiemann.Show;
end;

procedure TFormMathPioneers.ImageGaussClick(Sender: TObject);
begin
   FormMathPioneers.Hide;
   FormGauss.Show;
end;

procedure TFormMathPioneers.ImageHippasusClick(Sender: TObject);
begin
   FormMathPioneers.Hide;
   FormHippasus.Show;
end;

end.
