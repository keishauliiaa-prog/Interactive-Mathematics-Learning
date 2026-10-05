unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiAritmetika = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiAritmetika: TFormFyiAritmetika;

implementation

uses Unit21;

{$R *.dfm}

procedure TFormFyiAritmetika.ImageBackClick(Sender: TObject);
begin
  FormFyiAritmetika.Hide;
  FormAritmetika.Show;
end;

end.
