unit Unit79;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormInformationTheCatculusChase = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInformationTheCatculusChase: TFormInformationTheCatculusChase;

implementation

uses Unit78;

{$R *.dfm}

procedure TFormInformationTheCatculusChase.Image2Click(Sender: TObject);
begin
  FormInformationTheCatculusChase.Hide;
  FormTheCatculusChaseUtama.Show;
end;

end.
