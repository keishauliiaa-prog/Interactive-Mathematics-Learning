unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormDiophantus = class(TForm)
    ImageDiophantus: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDiophantus: TFormDiophantus;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormDiophantus.ImageBackClick(Sender: TObject);
begin
  FormDiophantus.Hide;
  FormMathPioneers.Show;
end;

end.
