unit Unit49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormPersegi = class(TForm)
    Image1: TImage;
    Image2: TImage;
    EditInput: TEdit;
    EditOutput: TEdit;
    Button1: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPersegi: TFormPersegi;

implementation

uses Unit46;

{$R *.dfm}

procedure TFormPersegi.Image2Click(Sender: TObject);
begin
  FormPersegi.Hide;
  FormLuas.Show;
end;

procedure TFormPersegi.Button1Click(Sender: TObject);
  procedure HitungLuasPersegi;
  var
  sisi, luas : real;
  begin
    sisi := StrToFloat (EditInput.Text);
    luas := (sisi*sisi);
    EditOutput.Text := FloatToStr(luas);
  end;

BEGIN
  HitungLuasPersegi
END;

end.
