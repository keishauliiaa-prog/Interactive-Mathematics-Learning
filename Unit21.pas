unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormAritmetika = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImageNext: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAritmetika: TFormAritmetika;

implementation

uses Unit16, Unit22;

{$R *.dfm}

procedure TFormAritmetika.ImageBackClick(Sender: TObject);
begin
  FormAritmetika.Hide;
  FormMathKnow.Show;

end;

procedure TFormAritmetika.ImageNextClick(Sender: TObject);
begin
  FormAritmetika.Hide;
  FormFyiAritmetika.Show;
end;

end.
