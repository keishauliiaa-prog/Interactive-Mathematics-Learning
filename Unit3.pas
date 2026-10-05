unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Unit2;

type
  TFormLogIn = class(TForm)
    Image1: TImage;
    Image2: TImage;
    ImageBack: TImage;
    EditUsernameLo: TEdit;
    EditPwLo: TEdit;
    procedure ImageBackClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogIn: TFormLogIn;

implementation

uses Unit1, Unit4;

{$R *.dfm}


procedure TFormLogIn.ImageBackClick(Sender: TObject);
begin
  FormUtama.Show;
  FormLogIn.Hide;
end;

procedure TFormLogIn.Image2Click(Sender: TObject);
  var
    i:integer;
    username, password:string;
    ketemu:boolean;
  begin
    username:=EditUsernameLo.Text;
    Password:= EditPwLo.Text;

  if (username = '' ) or (password='') then
  begin
    ShowMessage('Please enter both username and password.');
    Exit;
  end;

  ketemu:=false;

  for i:= 0 to FormSignUp.ListBox1.Items.Count-1 do
  begin
    if (FormSignUp.ListBox1.Items[i] = username) and
       (FormSignUp.ListBox2.Items[i] = password) then
    begin
      ketemu := True;
      Break;
    end;
  end;

  if not ketemu then
    ShowMessage('Invalid login. Please check your username and password or sign up first!')
  else
  begin
    FormLogIn.Hide;
    FormMathCraft.Show;
  end;
  end;



end.
