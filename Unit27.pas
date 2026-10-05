unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormStatistika = class(TForm)
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
  FormStatistika: TFormStatistika;

implementation

uses Unit16, Unit28;

{$R *.dfm}

procedure TFormStatistika.ImageBackClick(Sender: TObject);
begin
  FormStatistika.Hide;
  FormMathKnow.Show;
end;

procedure TFormStatistika.ImageNextClick(Sender: TObject);
begin
  FormStatistika.Hide;
  FormFyiStatistika.Show;

end;

end.
