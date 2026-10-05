unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMathKnow = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImageDiskret: TImage;
    ImageAljabar: TImage;
    ImageAritmetika: TImage;
    ImageGeometri: TImage;
    ImageTrigono: TImage;
    ImageStatistika: TImage;
    ImageTeoBil: TImage;
    ImageBidRuang: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageGeometriClick(Sender: TObject);
    procedure ImageAljabarClick(Sender: TObject);
    procedure ImageAritmetikaClick(Sender: TObject);
    procedure ImageTrigonoClick(Sender: TObject);
    procedure ImageBidRuangClick(Sender: TObject);
    procedure ImageTeoBilClick(Sender: TObject);
    procedure ImageStatistikaClick(Sender: TObject);
    procedure ImageDiskretClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMathKnow: TFormMathKnow;

implementation

uses Unit6, Unit25, Unit17, Unit19, Unit23, Unit21, Unit22, Unit29, Unit27,
  Unit31;

{$R *.dfm}

procedure TFormMathKnow.ImageBackClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormMathWorld.Show;
end;

procedure TFormMathKnow.ImageGeometriClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormGeometri.Show;
end;

procedure TFormMathKnow.ImageAljabarClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormAljabar.Show;
end;

procedure TFormMathKnow.ImageAritmetikaClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormAritmetika.Show;
end;

procedure TFormMathKnow.ImageTrigonoClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormTrigono.Show;
end;

procedure TFormMathKnow.ImageBidRuangClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormBidRuang.Show;
end;

procedure TFormMathKnow.ImageTeoBilClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormTeoBil.Show;
end;

procedure TFormMathKnow.ImageStatistikaClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormStatistika.Show;
end;

procedure TFormMathKnow.ImageDiskretClick(Sender: TObject);
begin
  FormMathKnow.Hide;
  FormDiskret.Show;
end;

end.
