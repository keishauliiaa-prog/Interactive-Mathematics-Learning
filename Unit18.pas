unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiAljabar = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiAljabar: TFormFyiAljabar;

implementation

uses Unit17;

{$R *.dfm}

procedure TFormFyiAljabar.ImageBackClick(Sender: TObject);
begin
  FormFyiAljabar.Hide;
  FormAljabar.Show;
end;

end.
