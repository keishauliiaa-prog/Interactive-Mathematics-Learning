unit Unit46;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormLuas = class(TForm)
    Image1: TImage;
    ImageBack: TImage;
    ImagePersegi: TImage;
    ImageSegitiga: TImage;
    Imagejajargenjang: TImage;
    ImageBelahKetupat: TImage;
    ImagePersegiPanjang: TImage;
    ImageLingkaran: TImage;
    ImageLayangLayang: TImage;
    ImageTrapesium: TImage;
    procedure ImageBackClick(Sender: TObject);
    procedure ImagePersegiClick(Sender: TObject);
    procedure ImageSegitigaClick(Sender: TObject);
    procedure ImagejajargenjangClick(Sender: TObject);
    procedure ImageBelahKetupatClick(Sender: TObject);
    procedure ImagePersegiPanjangClick(Sender: TObject);
    procedure ImageLingkaranClick(Sender: TObject);
    procedure ImageLayangLayangClick(Sender: TObject);
    procedure ImageTrapesiumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLuas: TFormLuas;

implementation

uses Unit48, Unit49, Unit52, Unit50, Unit51, Unit53, Unit55, Unit54,
  Unit56;

{$R *.dfm}

procedure TFormLuas.ImageBackClick(Sender: TObject);
begin
  FormBRuang.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImagePersegiClick(Sender: TObject);
begin
  FormPersegi.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImageSegitigaClick(Sender: TObject);
begin
  FormSegitiga.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImagejajargenjangClick(Sender: TObject);
begin
  FormJajargenjang.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImageBelahKetupatClick(Sender: TObject);
begin
  FormKetupat.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImagePersegiPanjangClick(Sender: TObject);
begin
  FormPersegiPanjang.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImageLingkaranClick(Sender: TObject);
begin
  FormLingkaran.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImageLayangLayangClick(Sender: TObject);
begin
  FormLayangLayang.Show;
  FormLuas.Hide;
end;

procedure TFormLuas.ImageTrapesiumClick(Sender: TObject);
begin
  FormTrapesium.Show;
  FormBRuang.Hide;
end;

end.
