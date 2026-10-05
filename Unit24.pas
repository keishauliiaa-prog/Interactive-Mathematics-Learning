unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiTeoBil = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiTeoBil: TFormFyiTeoBil;

implementation

uses Unit23;

{$R *.dfm}

procedure TFormFyiTeoBil.ImageBackClick(Sender: TObject);
begin
  FormFyiTeoBil.Hide;
  FormTeoBil.Show;
end;

end.
