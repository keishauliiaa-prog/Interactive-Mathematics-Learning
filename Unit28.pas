unit Unit28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiStatistika = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiStatistika: TFormFyiStatistika;

implementation

uses Unit27;

{$R *.dfm}

procedure TFormFyiStatistika.ImageBackClick(Sender: TObject);
begin
  FormFyiStatistika.Hide;
  FormStatistika.Show;
end;

end.
