unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormBrowseContent = class(TForm)
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
  FormBrowseContent: TFormBrowseContent;

implementation

uses Unit6, Unit4, Unit37;

{$R *.dfm}


procedure TFormBrowseContent.Image2Click(Sender: TObject);
begin
  FormBrowseContent.Hide;
  FormMathCraft.Show;
end;


procedure TFormBrowseContent.Image3Click(Sender: TObject);
begin
  FormBrowseContent.Hide;
  FormMiniLibrary.Show;
end;

procedure TFormBrowseContent.Image4Click(Sender: TObject);
begin
  FormBrowseContent.Hide;
  FormMathWorld.Show;
end;

end.
