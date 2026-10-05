unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormAlKhawarizmi = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlKhawarizmi: TFormAlKhawarizmi;

implementation

uses Unit7;

{$R *.dfm}

procedure TFormAlKhawarizmi.Image2Click(Sender: TObject);
begin
  FormAlKhawarizmi.Hide;
  FormMathPioneers.Show;
end;

end.
