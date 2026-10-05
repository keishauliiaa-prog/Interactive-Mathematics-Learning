unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMathWorld = class(TForm)
    Image1: TImage;
    ImageMathKnow: TImage;
    ImageBack: TImage;
    ImageMathPioneers: TImage;
    procedure ImageMathKnowClick(Sender: TObject);
    procedure ImageMathPioneersClick(Sender: TObject);
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMathWorld: TFormMathWorld;

implementation

uses Unit7, Unit16, Unit5;

{$R *.dfm}


procedure TFormMathWorld.ImageMathPioneersClick(Sender: TObject);
begin
  FormMathWorld.Hide;
  FormMathPioneers.Show;
end;

procedure TFormMathWorld.ImageMathKnowClick(Sender: TObject);
begin
  FormMathWorld.Hide;
  FormMathKnow.Show;

end;

procedure TFormMathWorld.ImageBackClick(Sender: TObject);
begin
  FormMathWorld.Hide;
  FormBrowseContent.Show;
end;

end.
