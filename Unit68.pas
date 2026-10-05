unit Unit68;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormDeskripsi = class(TForm)
    Image1: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeskripsi: TFormDeskripsi;

implementation

uses Unit67, Unit69;

{$R *.dfm}

procedure TFormDeskripsi.Image2Click(Sender: TObject);
begin
  FormDeskripsi.Hide;
  FormMateri.Show;
end;

procedure TFormDeskripsi.Image3Click(Sender: TObject);
begin
  FormDeskripsi.Hide;
  FormTentukan.Show;
end;

end.
