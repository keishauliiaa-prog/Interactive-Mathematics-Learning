unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormMiniLibrary = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    Image3: TImage;
    ListBox1: TListBox;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMiniLibrary: TFormMiniLibrary;
  posisi: string;
implementation

uses Unit5;

{$R *.dfm}

procedure TFormMiniLibrary.Image2Click(Sender: TObject);
begin
  FormMiniLibrary.Hide;
  FormBrowseContent.Show;
end;

procedure TFormMiniLibrary.Image3Click(Sender: TObject);
begin
  ListBox1.Clear;
  posisi := 'menu';

  if (Pos('semester 1', LowerCase(Edit1.Text)) > 0) and
        (Pos('pendidikan matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Pendidikan Agama Islam');
    ListBox1.Items.Add('Pendidikan Kewarganegaraan');
    ListBox1.Items.Add('Pendidikan Bahasa Indonesia');
    ListBox1.Items.Add('Kalkulus I');
    ListBox1.Items.Add('Himpunan dan Teori Bilangan');
    ListBox1.Items.Add('Teori Graf');
    ListBox1.Items.Add('Keterampilan Bahasa Inggris');
  end

  else if (Pos('semester 2', LowerCase(Edit1.Text)) > 0) and
        (Pos('pendidikan matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Pendidikan Pancasila');
    ListBox1.Items.Add('Geometri Analitik');
    ListBox1.Items.Add('Aljabar Linier');
    ListBox1.Items.Add('Kalkulus II');
    ListBox1.Items.Add('Geometri Bidang dan Ruang');
    ListBox1.Items.Add('Teori Graf');
    ListBox1.Items.Add('Program Linier');
  end

  else if (Pos('semester 3', LowerCase(Edit1.Text)) > 0) and
        (Pos('pendidikan matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Landasan Pendidikan');
    ListBox1.Items.Add('Seminar Pendidikan Agama Islam');
    ListBox1.Items.Add('Perencanaan Pembelajaran');
    ListBox1.Items.Add('Pengembangan Sumber dan Bahan Ajar');
    ListBox1.Items.Add('Pengembangan Alat Permainan Edukatif');
    ListBox1.Items.Add('Evaluasi Pembelajaran');
    ListBox1.Items.Add('Strategi Pembelajaran');
    ListBox1.Items.Add('Literasi TIK dan Media Pembelajaran');
  end

  else if (Pos('semester 4', LowerCase(Edit1.Text)) > 0) and
        (Pos('pendidikan matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Statistika Matematika Teiritis');
    ListBox1.Items.Add('Kapita Selekta Matematika Pendidikan Menengah');
    ListBox1.Items.Add('Statistika Penelitian Pendidikan');
    ListBox1.Items.Add('Kalkulus 3');
    ListBox1.Items.Add('Persamaan Diferensial');
    ListBox1.Items.Add('Multimedia Pendidikan Matematika');
    ListBox1.Items.Add('Evaluasi Pembelajaran Matematika');
  end

  else if (Pos('semester 5', LowerCase(Edit1.Text)) > 0) and
        (Pos('pendidikan matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('MSTR Untuk Pembangunan Berkelanjutan');
    ListBox1.Items.Add('Pengolahan dan Analisis Data Penelitian');
    ListBox1.Items.Add('Analisis Real');
    ListBox1.Items.Add('Multimedia Digital Pendidikan Matematika');
  end

  else if (Pos('semester 1', LowerCase(Edit1.Text)) > 0) and
        (Pos('matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Pendidikan Agama Islam');
    ListBox1.Items.Add('Pendidikan Bahasa Indonesia');
    ListBox1.Items.Add('Kalkulus 1');
    ListBox1.Items.Add('Himpunan dan Teori Bilangan');
    ListBox1.Items.Add('Geometri Bidang dan Ruang');
    ListBox1.Items.Add('Keterampilan Bahasa Inggris');
  end

  else if (Pos('semester 2', LowerCase(Edit1.Text)) > 0) and
        (Pos('matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Pendidikan Pancasila');
    ListBox1.Items.Add('Aljabar Linier');
    ListBox1.Items.Add('Statistika Dasar');
    ListBox1.Items.Add('Algoritma dan Pemograman');
    ListBox1.Items.Add('Kalkulus 2');
    ListBox1.Items.Add('Program Linier');
  end

  else if (Pos('semester 3', LowerCase(Edit1.Text)) > 0) and
        (Pos('matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Teori Grup dan Ring');
    ListBox1.Items.Add('Persamaan Diferensial Biasa & aplikasinya');
    ListBox1.Items.Add('Statistika Deskriptif Teoritis');
    ListBox1.Items.Add('Kalkulus 3');
  end

  else if (Pos('semester 4', LowerCase(Edit1.Text)) > 0) and
        (Pos('matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('Analisis Real');
    ListBox1.Items.Add('Kombinatorika');
    ListBox1.Items.Add('Teiri Graf dan Aplikasinya');
    ListBox1.Items.Add('Pengolahan Data');
    ListBox1.Items.Add('Statistika Inferensial Teoritis');
    ListBox1.Items.Add('Kewirausahaan');
  end

  else if (Pos('semester 5', LowerCase(Edit1.Text)) > 0) and
        (Pos('matematika', LowerCase(Edit1.Text)) > 0) then
  begin
    ListBox1.Items.Add('MSTR untuk Pembangunan Keberlanjutan');
    ListBox1.Items.Add('Topologi Pada R');
    ListBox1.Items.Add('Riset Operasi');
    ListBox1.Items.Add('Analisis Komputasi Numerik');
    ListBox1.Items.Add('Fungsi Variabel Kompleks');
    ListBox1.Items.Add('Proyek Konsultansi');
  end
  else
  begin
    ListBox1.Items.Add('Maaf, tidak ditemukan.');
  end;

end;



procedure TFormMiniLibrary.ListBox1Click(Sender: TObject);
begin
  if posisi = 'menu' then
  begin
    if ListBox1.ItemIndex = -1 then Exit;

    if ListBox1.Items[ListBox1.ItemIndex] = 'Kalkulus 1' then
    begin
      ListBox1.Clear;
      ListBox1.Items.Add('Materi Kalkulus 1:');
      ListBox1.Items.Add('1. Limit');
      ListBox1.Items.Add('2. Turunan');
      ListBox1.Items.Add('3. Integral');
      ListBox1.Items.Add('< Kembali');
      posisi := 'kalkulus11';
    end

    else
      if ListBox1.Items[ListBox1.ItemIndex] = 'Himpunan dan Teori Bilangan' then
    begin
      ListBox1.Clear;
      ListBox1.Items.Add('Materi Himpunan dan Teori Bilangan:');
      ListBox1.Items.Add('- Penerapan Operasi Fungsi Himpunan');
      ListBox1.Items.Add('- Teknik Pembuktian');
      ListBox1.Items.Add('- Keterbagian');
      ListBox1.Items.Add('- Logika Matematika');
      ListBox1.Items.Add('- Definisi Fungsi');
      ListBox1.Items.Add('- Fungsi Mutlak Dan Fungsi Bilangan Bulat');
      ListBox1.Items.Add('- Operasi Pada Fungsi');
      ListBox1.Items.Add('- Fungsi Satu Satu Dan Fungsi Onto');
      ListBox1.Items.Add('< Kembali');
      posisi := 'Himpunan dan Teori Bilangan';
    end

    else
      if ListBox1.Items[ListBox1.ItemIndex] = 'Kalkulus 2' then
    begin
      ListBox1.Clear;
      ListBox1.Items.Add('Materi Himpunan dan Teori Bilangan:');
      ListBox1.Items.Add('- Teknik Integrasi');
      ListBox1.Items.Add('- Aplikasi Integral');
      ListBox1.Items.Add('- Integral Dalam Ruang Tiga Dimensi');
      ListBox1.Items.Add('< Kembali');
      posisi := 'Kalkulus 2';
    end;
  end
  else
  begin
    if ListBox1.Items[ListBox1.ItemIndex] = '< Kembali' then
      Image3Click(Self);
  end;
end;


end.
