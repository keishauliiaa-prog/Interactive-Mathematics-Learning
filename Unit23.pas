unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormTeoBil = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImageNext: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeoBil: TFormTeoBil;

implementation

uses Unit16, Unit24;

{$R *.dfm}

procedure TFormTeoBil.ImageBackClick(Sender: TObject);
begin
  FormTeoBil.Hide;
  FormMathKnow.Show;
end;

procedure TFormTeoBil.ImageNextClick(Sender: TObject);
begin
  FormTeobil.Hide;
  FormFyiTeoBil.Show;
end;

end.
