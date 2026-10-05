unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormBidRuang = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImageNext: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBidRuang: TFormBidRuang;

implementation

uses Unit16, Unit20;

{$R *.dfm}

procedure TFormBidRuang.ImageBackClick(Sender: TObject);
begin
  FormBidRuang.Hide;
  FormMathKnow.Show;
end;

procedure TFormBidRuang.ImageNextClick(Sender: TObject);
begin
  FormBidRuang.Hide;
  FormFyiBidRuang.Show;
end;

end.
