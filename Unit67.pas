unit Unit67;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMateri = class(TForm)
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMateri: TFormMateri;

implementation

uses Unit66, Unit68, Unit71, Unit72;

{$R *.dfm}



procedure TFormMateri.Image2Click(Sender: TObject);
begin
  FormMateri.Hide;
  FormPrima.Show;
end;

procedure TFormMateri.Image3Click(Sender: TObject);
begin
  FormMateri.Hide;
  FormDeskripsi.Show;
end;

procedure TFormMateri.Image4Click(Sender: TObject);
begin
  FormMateri.Hide;
  FormContoh.Show;
end;

procedure TFormMateri.Image5Click(Sender: TObject);
begin
  FormMateri.Hide;
  FormFungsi.Show;
end;

end.
