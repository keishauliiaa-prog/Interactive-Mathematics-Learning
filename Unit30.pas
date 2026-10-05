unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiTrigono = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiTrigono: TFormFyiTrigono;

implementation

uses Unit29;

{$R *.dfm}

procedure TFormFyiTrigono.Image2Click(Sender: TObject);
begin
  FormFyiTrigono.Hide;
  FormTrigono.Show;
end;

end.
