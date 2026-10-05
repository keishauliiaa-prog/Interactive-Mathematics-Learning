unit UnitFChebysevvv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormChebysev = class(TForm)
    EditN: TEdit;
    Label1: TLabel;
    EditX: TEdit;
    Label2: TLabel;
    ButtonHasil: TButton;
    EditHasil: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure ButtonHasilClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChebysev: TFormChebysev;

implementation

uses Unit39;

{$R *.dfm}

procedure TFormChebysev.ButtonHasilClick(Sender: TObject);
var n,x:integer;

  function chebysev (n,x:integer): real;
  begin
    if n=0 then
      result:= 1
    else
      if n=1 then
        result:=x
      else
        result:=2*x*chebysev(n-1,x)-chebysev(n-2,x)
  end;
begin
  n:=strtoint(EditN.Text);
  x:=strtoint(EditX.Text);
  EditHasil.Text:=floattostr(chebysev(n,x));
end;

procedure TFormChebysev.Image2Click(Sender: TObject);
begin
  FormChebysev.Hide;
  FormAljabarLinier.Show;
end;

end.
