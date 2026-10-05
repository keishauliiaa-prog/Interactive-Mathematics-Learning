unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormSignUp = class(TForm)
    ImageBG: TImage;
    ImageSignUp2: TImage;
    ImageBack: TImage;
    EditUsername: TEdit;
    EditPw: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageSignUp2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSignUp: TFormSignUp;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormSignUp.ImageBackClick(Sender: TObject);
begin
FormSignUp.Hide;
FormUtama.Show;
end;

procedure TFormSignUp.ImageSignUp2Click(Sender: TObject);

function SyaratPW(const Pw: string): Boolean;
var
  i: Integer;
  huruf, angka: Boolean;
begin
  huruf := False;
  angka := False;

  if Length(Pw) < 5 then
  begin
    Result := False;
    Exit;
  end;

  for i := 1 to Length(Pw) do
  begin
    if Pw[i] in ['A'..'Z', 'a'..'z'] then
      huruf := True
    else if Pw[i] in ['0'..'9'] then
      angka := True;
  end;

  Result := huruf and angka;
end;



begin

  if (EditUsername.Text = '') or (EditPw.Text = '') then
    ShowMessage('Username and password must not be empty.')
  else if ListBox1.Items.IndexOf(EditUsername.Text) <> -1 then
    ShowMessage('This username is already taken!')
    else if not SyaratPw(EditPw.Text) then
    ShowMessage('Use at least 5 characters, including both letters and numbers!')
  else
  begin
  ListBox1.Items.Add(EditUsername.Text);
  ListBox2.Items.Add(EditPw.Text);
  ShowMessage('Account created!');

  EditUsername.Text:='';
  EditPw.Text:='';
  end;
end;

end.

