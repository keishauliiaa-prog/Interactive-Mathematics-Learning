unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormAljabar = class(TForm)
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
  FormAljabar: TFormAljabar;

implementation

uses Unit16, Unit18;

{$R *.dfm}

procedure TFormAljabar.ImageBackClick(Sender: TObject);
begin
  FormAljabar.Hide;
  FormMathKnow.Show;
end;

procedure TFormAljabar.ImageNextClick(Sender: TObject);
begin
  FormAljabar.Hide;
  FormFyiAljabar.Show;
end;

end.
