unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFyiDiskret = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFyiDiskret: TFormFyiDiskret;

implementation

uses Unit31;

{$R *.dfm}

procedure TFormFyiDiskret.Image2Click(Sender: TObject);
begin
  FormFyiDiskret.Hide;
  FormDiskret.Show;
end;

end.
