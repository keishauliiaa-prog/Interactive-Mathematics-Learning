unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormGauss = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGauss: TFormGauss;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormGauss.Image2Click(Sender: TObject);
begin
  FormGauss.Hide;
  FormMathPioneers.Show;
end;

end.
