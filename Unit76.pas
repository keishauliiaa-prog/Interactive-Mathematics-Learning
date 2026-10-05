unit Unit76;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TFormStatistic = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStatistic: TFormStatistic;

implementation

uses Unit35, UnitAnovaOneWay, RankSpearman, UnitStatistika;

{$R *.dfm}

procedure TFormStatistic.Image2Click(Sender: TObject);
begin
  FormQuickMath.Show;
  FormStatistic.Hide;
end;

procedure TFormStatistic.Image3Click(Sender: TObject);
begin
  FormStatistic.Hide;
  FormCalcStatistika.Show;
end;

procedure TFormStatistic.Image4Click(Sender: TObject);
begin
  FormStatistic.Hide;
  FormAnovaOneWay.Show;
end;

procedure TFormStatistic.Image5Click(Sender: TObject);
begin
  FormStatistic.Hide;
  FormRankSpearman.Show;
end;

end.
