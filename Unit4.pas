unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormMathCraft = class(TForm)
    ImageMathCraft: TImage;
    ImageBrowseContent: TImage;
    ImageStartMatch: TImage;
    ImageMathTool: TImage;
    ImageBack: TImage;
    ImageExit: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImageExitClick(Sender: TObject);
    procedure ImageBrowseContentClick(Sender: TObject);
    procedure ImageMathToolClick(Sender: TObject);
    procedure ImageStartMatchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMathCraft: TFormMathCraft;

implementation

uses Unit1, Unit6, Unit34, Unit33, Unit5, Unit80;

{$R *.dfm}

procedure TFormMathCraft.ImageBackClick(Sender: TObject);
begin
  FormUtama.Show;
  FormMathCraft.Hide;
end;

procedure TFormMathCraft.ImageExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMathCraft.ImageBrowseContentClick(Sender: TObject);
begin
  FormMathCraft.Hide;
  FormBrowseContent.Show;

end;

procedure TFormMathCraft.ImageMathToolClick(Sender: TObject);
begin
  FormMathCraft.Hide;
  FormMathTool.Show;
end;

procedure TFormMathCraft.ImageStartMatchClick(Sender: TObject);
begin
  FormStartMatch.Show;
  FormMathCraft.Hide;
end;

end.
