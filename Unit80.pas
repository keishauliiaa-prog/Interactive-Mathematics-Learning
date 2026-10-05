unit Unit80;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormStartMatch = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStartMatch: TFormStartMatch;

implementation

uses Unit4, ParkirKasir, Unit78;

{$R *.dfm}

procedure TFormStartMatch.Image2Click(Sender: TObject);
begin
  FormStartMatch.Hide;
  FormMathCraft.Show;
end;

procedure TFormStartMatch.Image3Click(Sender: TObject);
begin
  FormStartMatch.Hide;
  FormParkirPay.Show;
end;

procedure TFormStartMatch.Image4Click(Sender: TObject);
begin
  FormStartMatch.Hide;
  FormTheCatculusChaseUtama.Show;
end;

end.
