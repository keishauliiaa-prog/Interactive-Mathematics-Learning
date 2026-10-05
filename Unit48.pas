unit Unit48;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormBRuang = class(TForm)
    Image1: TImage;
    ImageVolume: TImage;
    ImageLuas: TImage;
    ImageBack: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageLuasClick(Sender: TObject);
    procedure ImageVolumeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBRuang: TFormBRuang;

implementation

uses Unit35, Unit46, Unit57;

{$R *.dfm}

procedure TFormBRuang.ImageBackClick(Sender: TObject);
begin
  FormBRuang.Hide;
  FormQuickMath.Show;
end;

procedure TFormBRuang.ImageLuasClick(Sender: TObject);
begin
  FormBRuang.Hide;
  if not Assigned(FormLuas) then
  begin
    FormLuas := TFormLuas.Create(Application);
  end;
  FormLuas.Show;
end;

procedure TFormBRuang.ImageVolumeClick(Sender: TObject);
begin
  FormBRuang.Hide;
  if not Assigned(FormVolume) then
  begin
    FormVolume := TFormVolume.Create(Application);
  end;
  FormVolume.Show
end;

end.
