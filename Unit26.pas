unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiGeometri = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiGeometri: TFormFyiGeometri;

implementation

uses Unit25;

{$R *.dfm}

procedure TFormFyiGeometri.ImageBackClick(Sender: TObject);
begin
  FormFyiGeometri.Hide;
  FormGeometri.Show;
end;

end.
