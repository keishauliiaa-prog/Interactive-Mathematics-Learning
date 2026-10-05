unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormDiskret = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImageNext: TImage;
    procedure ImageNextClick(Sender: TObject);
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDiskret: TFormDiskret;

implementation

uses Unit32, Unit16;

{$R *.dfm}

procedure TFormDiskret.ImageNextClick(Sender: TObject);
begin
  FormDiskret.Hide;
  FormFyiDiskret.Show;
end;

procedure TFormDiskret.ImageBackClick(Sender: TObject);
begin
  FormDiskret.Hide;
  FormMathKnow.Show;
end;

end.
