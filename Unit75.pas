unit Unit75;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormCP2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditAwal: TEdit;
    EditAkhir: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCP2: TFormCP2;

implementation

uses Unit74;

{$R *.dfm}

procedure TFormCP2.Image2Click(Sender: TObject);
begin
  FormCP2.Hide;
  FormCekPrima.Show;
end;

procedure TFormCP2.Button1Click(Sender: TObject);
 var
  i, j, awal, akhir : integer;
  prima : boolean;
 begin
  ListBox1.Clear;
  if (TryStrToInt(EditAwal.Text, awal)) and (TryStrToInt(EditAkhir.Text, akhir)) then
  begin
    for i := awal to akhir do
    begin
      if i < 2 then Continue;
      prima := True;
      for j := 2 to Trunc(Sqrt(i)) do
      begin
        if i mod j = 0 then
        begin
          prima := False;
          Break;
        end;
      end;
      if prima then
      ListBox1.Items.Add(IntToStr(i));
    end;
  end
  else
    ShowMessage('Masukkan angka yang valid di kedua kotak input.');
end;


procedure TFormCP2.Button2Click(Sender: TObject);
begin
  EditAwal.Clear;
  EditAkhir.Clear;
  ListBox1.Clear;
end;

end.
