unit Unit78;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormTheCatculusChaseUtama = class(TForm)
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
  FormTheCatculusChaseUtama: TFormTheCatculusChaseUtama;

implementation

uses Unit79, Sebrang, Unit80;

{$R *.dfm}

procedure TFormTheCatculusChaseUtama.Image2Click(Sender: TObject);
begin
  FormTheCatculusChaseUtama.Hide;
  FormInformationTheCatculusChase.Show;
end;

procedure TFormTheCatculusChaseUtama.Image3Click(Sender: TObject);
begin
  FormTheCatculusChaseUtama.Hide;
  FormTheCatculusChase.Show;
end;

procedure TFormTheCatculusChaseUtama.Image4Click(Sender: TObject);
begin
  FormTheCatculusChaseUtama.Hide;
  FormStartMatch.Show;
end;

end.
