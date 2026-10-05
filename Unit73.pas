unit Unit73;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormNextFungsi = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNextFungsi: TFormNextFungsi;

implementation

uses Unit72;

{$R *.dfm}

procedure TFormNextFungsi.Image2Click(Sender: TObject);
begin
  FormNextFungsi.Hide;
  FormFungsi.Show;
end;

end.
