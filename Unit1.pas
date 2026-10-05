 unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormUtama = class(TForm)
    Image1: TImage;
    ImageSignUp: TImage;
    ImageLogIn: TImage;
    procedure ImageSignUpClick(Sender: TObject);
    procedure ImageLogInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUtama: TFormUtama;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TFormUtama.ImageSignUpClick(Sender: TObject);
begin
  FormUtama.Hide;
  FormSignUp.Show;
end;

procedure TFormUtama.ImageLogInClick(Sender: TObject);
begin
  FormUtama.Hide;
  FormLogIn.Show;
end;

end.
