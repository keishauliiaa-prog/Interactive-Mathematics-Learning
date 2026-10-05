unit Unit72;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormFungsi = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFungsi: TFormFungsi;

implementation

uses Unit67, Unit73;

{$R *.dfm}

procedure TFormFungsi.Image2Click(Sender: TObject);
begin
  FormFungsi.Hide;
  FormMateri.Show;
end;

procedure TFormFungsi.Image3Click(Sender: TObject);
begin
  FormFungsi.Hide;
  FormNextFungsi.Show;
end;

end.
