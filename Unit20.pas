unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiBidRuang = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiBidRuang: TFormFyiBidRuang;

implementation

uses Unit19;

{$R *.dfm}

procedure TFormFyiBidRuang.ImageBackClick(Sender: TObject);
begin
  FormFyiBidRuang.Hide;
  FormBidRuang.Show;
end;

end.
