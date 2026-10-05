unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormRiemann = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRiemann: TFormRiemann;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormRiemann.Image2Click(Sender: TObject);
begin
  FormRiemann.Hide;
  FormMathPioneers.Show;
end;

end.
