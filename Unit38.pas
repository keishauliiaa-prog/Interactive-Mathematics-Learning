unit Unit38;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormKonversi = class(TForm)
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
  FormKonversi: TFormKonversi;

implementation

uses Unit35, Unit40, UnitSimulateCourse;

{$R *.dfm}

procedure TFormKonversi.Image2Click(Sender: TObject);
begin
  FormQuickMath.Show;
  FormKonversi.Hide;
end;

procedure TFormKonversi.Image3Click(Sender: TObject);
begin
  FormKonversi.Hide;
  FormSimulateCourse.Show;
end;

procedure TFormKonversi.Image4Click(Sender: TObject);
begin
  FormKonversi.Hide;
  FormGPAGoalPlanner.Show;
end;

end.
 