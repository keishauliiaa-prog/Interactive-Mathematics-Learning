unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormTrigono = class(TForm)
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
  FormTrigono: TFormTrigono;

implementation

uses Unit16, Unit30;

{$R *.dfm}

procedure TFormTrigono.ImageBackClick(Sender: TObject);
begin
  FormTrigono.Hide;
  FormMathKnow.Show;
end;

procedure TFormTrigono.ImageNextClick(Sender: TObject);
begin
  FormTrigono.Hide;
  FormFyiTrigono.Show;
end;

end.
