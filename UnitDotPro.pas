unit UnitDotPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormDotPro = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    ListBox2: TListBox;
    Button3: TButton;
    Edit4: TEdit;
    Image1: TImage;
    Image2: TImage;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDotPro: TFormDotPro;

implementation

uses Unit1, Unit39;

{$R *.dfm}

procedure TFormDotPro.Button4Click(Sender: TObject);
begin
  FormUtama.Show;
  FormDotPro.Hide;
end;

procedure TFormDotPro.Button1Click(Sender: TObject);
begin
 Listbox1.Items.Add(Edit2.Text);
 Edit2.Text:='';
end;

procedure TFormDotPro.Button2Click(Sender: TObject);
begin
 Listbox2.Items.Add(Edit3.Text);
 Edit3.Text:='';
end;

procedure TFormDotPro.Button3Click(Sender: TObject);
var
  a,b:array [1..100] of integer;
  n,i:integer;

  Function DP(a,b:array of integer; n: integer):real ;
  begin
    if n =1 then
      result:= a[0]*b[0]
    else
      result:= DP(a,b,n-1)+a[n-1]*b[n-1]
  end;
begin
n:= strtoint (Edit1.Text);

  for i:= 1 to n do
  begin
    a[i]:=strtoint(listbox1.items[i-1]);
    b[i]:=strtoint(listbox2.items[i-1]);
  end;
  
Edit4.Text:= Floattostr(DP(a,b,n));
end;

procedure TFormDotPro.Image2Click(Sender: TObject);
begin
  FormDotPro.Hide;
  FormAljabarLinier.Show;
end;

end.
