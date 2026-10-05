unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TFormDescartes = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDescartes: TFormDescartes;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormDescartes.Image2Click(Sender: TObject);
begin
  FormDescartes.Hide;
  FormMathPioneers.Show;
end;

end.
