unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFibonacci = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFibonacci: TFormFibonacci;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormFibonacci.Image2Click(Sender: TObject);
begin
  FormFibonacci.Hide;
  FormMathPioneers.Show;
end;

end.
