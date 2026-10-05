unit Unit70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormContohP = class(TForm)
    Image1: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContohP: TFormContohP;

implementation

uses Unit69;

{$R *.dfm}

procedure TFormContohP.Image2Click(Sender: TObject);
begin
  FormContohP.Hide;
  FormTentukan.SHow;
end;

end.
