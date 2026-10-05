unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormGeometri = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    Image2: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeometri: TFormGeometri;

implementation

uses Unit16, Unit26;

{$R *.dfm}

procedure TFormGeometri.ImageBackClick(Sender: TObject);
begin
  FormGeometri.Hide;
  FormMathKnow.Show;
end;

procedure TFormGeometri.Image2Click(Sender: TObject);
begin
  FormGeometri.Hide;
  FormFyiGeometri.Show;
end;

end.
