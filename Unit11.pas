unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormLagrange = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLagrange: TFormLagrange;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormLagrange.Image2Click(Sender: TObject);
begin
  FormLagrange.Hide;
  FormMathPioneers.Show;
end;

end.
