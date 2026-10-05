unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormContoh = class(TForm)
    Image1: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContoh: TFormContoh;

implementation

uses Unit67;

{$R *.dfm}

procedure TFormContoh.Image2Click(Sender: TObject);
begin
  FormContoh.Hide;
  FormMateri.Show;
end;

end.
