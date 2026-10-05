program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormUtama},
  Unit2 in 'Unit2.pas' {FormSignUp},
  Unit3 in 'Unit3.pas' {FormLogIn},
  Unit4 in 'Unit4.pas' {FormMathCraft},
  Unit5 in 'Unit5.pas' {FormBrowseContent},
  Unit6 in 'Unit6.pas' {FormMathWorld},
  Unit7 in 'Unit7.pas' {FormMathPioneers},
  Unit8 in 'Unit8.pas' {FormAlKhawarizmi},
  Unit9 in 'Unit9.pas' {FormDiophantus},
  Unit10 in 'Unit10.pas' {FormFibonacci},
  Unit11 in 'Unit11.pas' {FormLagrange},
  Unit12 in 'Unit12.pas' {FormDescartes},
  Unit13 in 'Unit13.pas' {FormRiemann},
  Unit14 in 'Unit14.pas' {FormGauss},
  Unit15 in 'Unit15.pas' {FormHippasus},
  Unit16 in 'Unit16.pas' {FormMathKnow},
  Unit17 in 'Unit17.pas' {FormAljabar},
  Unit18 in 'Unit18.pas' {FormFyiAljabar},
  Unit19 in 'Unit19.pas' {FormBR},
  Unit20 in 'Unit20.pas' {FormFyiBidRuang},
  Unit21 in 'Unit21.pas' {FormAritmetika},
  Unit22 in 'Unit22.pas' {FormFyiAritmetika},
  Unit23 in 'Unit23.pas' {FormTeoBil},
  Unit24 in 'Unit24.pas' {FormFyiTeoBil},
  Unit25 in 'Unit25.pas' {FormGeometri},
  Unit26 in 'Unit26.pas' {FormFyiGeometri},
  Unit27 in 'Unit27.pas' {FormStatistika},
  Unit28 in 'Unit28.pas' {FormFyiStatistika},
  Unit29 in 'Unit29.pas' {FormTrigono},
  Unit30 in 'Unit30.pas' {FormFyiTrigono},
  Unit31 in 'Unit31.pas' {FormDiskret},
  Unit32 in 'Unit32.pas' {FormFyiDiskret},
  Unit33 in 'Unit33.pas' {FormKalkulator},
  Unit34 in 'Unit34.pas' {FormMathTool},
  Unit35 in 'Unit35.pas' {FormQuickMath},
  Unit37 in 'Unit37.pas' {FormMiniLibrary},
  Unit40 in 'Unit40.pas' {FormGPAGoalPlanner},
  Unit41 in 'Unit41.pas' {FormAritmetikaDanFungsi},
  Unit42 in 'Unit42.pas' {FormBilBerpangkat},
  Unit43 in 'Unit43.pas' {FormSPLDV},
  Unit44 in 'Unit44.pas' {FormAkarPersamaanKuadrat},
  Unit45 in 'Unit45.pas' {FormFPBdanKPK},
  Unit46 in 'Unit46.pas' {FormLuas},
  Unit47 in 'Unit47.pas',
  Unit48 in 'Unit48.pas' {FormBRuang},
  Unit38 in 'Unit38.pas' {FormKonversi},
  Unit49 in 'Unit49.pas' {FormPersegi},
  Unit50 in 'Unit50.pas' {FormPersegiPanjang},
  Unit51 in 'Unit51.pas' {FormLingkaran},
  Unit52 in 'Unit52.pas' {FormSegitiga},
  Unit53 in 'Unit53.pas' {FormLayangLayang},
  Unit54 in 'Unit54.pas' {FormJajargenjang},
  Unit55 in 'Unit55.pas' {FormTrapesium},
  Unit56 in 'Unit56.pas' {FormKetupat},
  Unit57 in 'Unit57.pas' {FormVolume},
  Unit58 in 'Unit58.pas' {FormKubus},
  Unit59 in 'Unit59.pas' {FormBalok},
  Unit60 in 'Unit60.pas' {FormPSegitiga},
  Unit61 in 'Unit61.pas' {FormTabung},
  Unit62 in 'Unit62.pas' {FormKerucut},
  Unit63 in 'Unit63.pas' {FormBola},
  Unit64 in 'Unit64.pas' {FormLSegitiga},
  Unit65 in 'Unit65.pas' {FormLSegiEmpat},
  Unit66 in 'Unit66.pas' {FormPrima},
  Unit67 in 'Unit67.pas' {FormMateri},
  Unit68 in 'Unit68.pas' {FormDeskripsi},
  Unit69 in 'Unit69.pas' {FormTentukan},
  Unit70 in 'Unit70.pas' {FormContohP},
  Unit71 in 'Unit71.pas' {FormContoh},
  Unit72 in 'Unit72.pas' {FormFungsi},
  Unit73 in 'Unit73.pas' {FormNextFungsi},
  Unit74 in 'Unit74.pas' {FormCekPrima},
  Unit75 in 'Unit75.pas' {FormCP2},
  Unit39 in 'Unit39.pas' {FormAljabarLinier},
  Unit76 in 'Unit76.pas' {FormStatistic},
  Unit77 in 'Unit77.pas' {FormDaftarPrima},
  Unit78 in 'Unit78.pas' {FormTheCatculusChaseUtama},
  Unit79 in 'Unit79.pas' {FormInformationTheCatculusChase},
  Unit80 in 'Unit80.pas' {FormStartMatch},
  UnitSimulateCourse in 'UnitSimulateCourse.pas' {FormSimulateCourse},
  UnitDotPro in 'UnitDotPro.pas' {FormDotPro},
  UnitFChebysevvv in 'UnitFChebysevvv.pas' {FormChebysev},
  UnitAnovaOneWay in 'UnitAnovaOneWay.pas' {FormAnovaOneWay},
  MathCal1 in 'MathCal1.pas' {FormCalcMat},
  ParkirKasir in 'ParkirKasir.pas' {FormParkirPay},
  RankSpearman in 'RankSpearman.pas' {FormRankSpearman},
  UnitStatistika in 'UnitStatistika.pas' {FormCalcStatistika},
  Sebrang in 'Sebrang.pas' {FormTheCatculusChase},
  UnitBeneran in 'UnitBeneran.pas' {FormBeneranGrafik};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormUtama, FormUtama);
  Application.CreateForm(TFormSignUp, FormSignUp);
  Application.CreateForm(TFormLogIn, FormLogIn);
  Application.CreateForm(TFormMathCraft, FormMathCraft);
  Application.CreateForm(TFormBrowseContent, FormBrowseContent);
  Application.CreateForm(TFormMathWorld, FormMathWorld);
  Application.CreateForm(TFormMathPioneers, FormMathPioneers);
  Application.CreateForm(TFormAlKhawarizmi, FormAlKhawarizmi);
  Application.CreateForm(TFormDiophantus, FormDiophantus);
  Application.CreateForm(TFormFibonacci, FormFibonacci);
  Application.CreateForm(TFormLagrange, FormLagrange);
  Application.CreateForm(TFormDescartes, FormDescartes);
  Application.CreateForm(TFormRiemann, FormRiemann);
  Application.CreateForm(TFormGauss, FormGauss);
  Application.CreateForm(TFormHippasus, FormHippasus);
  Application.CreateForm(TFormMathKnow, FormMathKnow);
  Application.CreateForm(TFormAljabar, FormAljabar);
  Application.CreateForm(TFormFyiAljabar, FormFyiAljabar);
  Application.CreateForm(TFormFyiBidRuang, FormFyiBidRuang);
  Application.CreateForm(TFormAritmetika, FormAritmetika);
  Application.CreateForm(TFormFyiAritmetika, FormFyiAritmetika);
  Application.CreateForm(TFormTeoBil, FormTeoBil);
  Application.CreateForm(TFormFyiTeoBil, FormFyiTeoBil);
  Application.CreateForm(TFormGeometri, FormGeometri);
  Application.CreateForm(TFormFyiGeometri, FormFyiGeometri);
  Application.CreateForm(TFormStatistika, FormStatistika);
  Application.CreateForm(TFormFyiStatistika, FormFyiStatistika);
  Application.CreateForm(TFormTrigono, FormTrigono);
  Application.CreateForm(TFormFyiTrigono, FormFyiTrigono);
  Application.CreateForm(TFormDiskret, FormDiskret);
  Application.CreateForm(TFormFyiDiskret, FormFyiDiskret);
  Application.CreateForm(TFormKalkulator, FormKalkulator);
  Application.CreateForm(TFormMathTool, FormMathTool);
  Application.CreateForm(TFormQuickMath, FormQuickMath);
  Application.CreateForm(TFormMiniLibrary, FormMiniLibrary);
  Application.CreateForm(TFormLuas, FormLuas);
  Application.CreateForm(TFormKonversi, FormKonversi);
  Application.CreateForm(TFormPersegi, FormPersegi);
  Application.CreateForm(TFormPersegiPanjang, FormPersegiPanjang);
  Application.CreateForm(TFormLingkaran, FormLingkaran);
  Application.CreateForm(TFormSegitiga, FormSegitiga);
  Application.CreateForm(TFormLayangLayang, FormLayangLayang);
  Application.CreateForm(TFormJajargenjang, FormJajargenjang);
  Application.CreateForm(TFormTrapesium, FormTrapesium);
  Application.CreateForm(TFormKetupat, FormKetupat);
  Application.CreateForm(TFormVolume, FormVolume);
  Application.CreateForm(TFormKubus, FormKubus);
  Application.CreateForm(TFormBalok, FormBalok);
  Application.CreateForm(TFormPSegitiga, FormPSegitiga);
  Application.CreateForm(TFormTabung, FormTabung);
  Application.CreateForm(TFormKerucut, FormKerucut);
  Application.CreateForm(TFormBola, FormBola);
  Application.CreateForm(TFormLSegitiga, FormLSegitiga);
  Application.CreateForm(TFormLSegiEmpat, FormLSegiEmpat);
  Application.CreateForm(TFormPrima, FormPrima);
  Application.CreateForm(TFormMateri, FormMateri);
  Application.CreateForm(TFormDeskripsi, FormDeskripsi);
  Application.CreateForm(TFormTentukan, FormTentukan);
  Application.CreateForm(TFormContohP, FormContohP);
  Application.CreateForm(TFormContoh, FormContoh);
  Application.CreateForm(TFormFungsi, FormFungsi);
  Application.CreateForm(TFormNextFungsi, FormNextFungsi);
  Application.CreateForm(TFormCekPrima, FormCekPrima);
  Application.CreateForm(TFormCP2, FormCP2);
  Application.CreateForm(TFormBRuang, FormBRuang);
  Application.CreateForm(TFormKonversi, FormKonversi);
  Application.CreateForm(TFormGPAGoalPlanner, FormGPAGoalPlanner);
  Application.CreateForm(TFormSimulateCourse, FormSimulateCourse);
  Application.CreateForm(TFormDotPro, FormDotPro);
  Application.CreateForm(TFormChebysev, FormChebysev);
  Application.CreateForm(TFormAnovaOneWay, FormAnovaOneWay);
  Application.CreateForm(TFormCalcMat, FormCalcMat);
  Application.CreateForm(TFormParkirPay, FormParkirPay);
  Application.CreateForm(TFormRankSpearman, FormRankSpearman);
  Application.CreateForm(TFormCalcStatistika, FormCalcStatistika);
  Application.CreateForm(TFormTheCatculusChase, FormTheCatculusChase);
  Application.CreateForm(TFormBeneranGrafik, FormBeneranGrafik);
  Application.CreateForm(TFormAritmetikaDanFungsi, FormAritmetikaDanFungsi);
  Application.CreateForm(TFormBilBerpangkat, FormBilBerpangkat);
  Application.CreateForm(TFormSPLDV, FormSPLDV);
  Application.CreateForm(TFormAkarPersamaanKuadrat, FormAkarPersamaanKuadrat);
  Application.CreateForm(TFormFPBdanKPK, FormFPBdanKPK);
  Application.CreateForm(TFormAljabarLinier, FormAljabarLinier);
  Application.CreateForm(TFormCalcStatistika, FormCalcStatistika);
  Application.CreateForm(TFormStatistic, FormStatistic);
  Application.CreateForm(TFormDaftarPrima, FormDaftarPrima);
  Application.CreateForm(TFormTheCatculusChaseUtama, FormTheCatculusChaseUtama);
  Application.CreateForm(TFormInformationTheCatculusChase, FormInformationTheCatculusChase);
  Application.CreateForm(TFormStartMatch, FormStartMatch);
  Application.Run;
end.
