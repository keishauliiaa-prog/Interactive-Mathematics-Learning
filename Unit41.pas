unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormAritmetikaDanFungsi = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAritmetikaDanFungsi: TFormAritmetikaDanFungsi;

implementation

uses Unit35, Unit42, Unit43, Unit44;

{$R *.dfm}

procedure TFormAritmetikaDanFungsi.Image2Click(Sender: TObject);
begin
  FormQuickMath.Show;
  FormAritmetikaDanFungsi.Hide;
end;

procedure TFormAritmetikaDanFungsi.Image3Click(Sender: TObject);
begin
  FormBilBerpangkat.Show;
  FormAritmetikaDanFungsi.Hide;

end;

procedure TFormAritmetikaDanFungsi.Image4Click(Sender: TObject);
begin
  FormSPLDV.Show;
  FormAritmetikaDanFungsi.Hide;
end;

procedure TFormAritmetikaDanFungsi.Image5Click(Sender: TObject);
begin
  FormAkarPersamaanKuadrat.Show;
  FormAritmetikaDanFungsi.Hide;

end;

end.
