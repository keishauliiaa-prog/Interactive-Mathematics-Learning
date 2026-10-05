unit Unit69;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormTentukan = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTentukan: TFormTentukan;

implementation

uses Unit68, Unit70;

{$R *.dfm}

procedure TFormTentukan.Image3Click(Sender: TObject);
begin
  FormTentukan.Hide;
  FormDeskripsi.Show;
end;

procedure TFormTentukan.Image2Click(Sender: TObject);
begin
  FormTentukan.Hide;
  FormContohP.Show;
end;

end.
