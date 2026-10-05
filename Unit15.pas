unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormHippasus = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHippasus: TFormHippasus;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormHippasus.Image2Click(Sender: TObject);
begin
  FormHippasus.Hide;
  FormMathPioneers.Show;
end;

end.
