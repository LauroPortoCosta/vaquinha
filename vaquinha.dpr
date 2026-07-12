program vaquinha;

uses
  System.StartUpCopy,
  FMX.Forms,
  va_01_abertura in 'va_01_abertura.pas' {va_abertura},
  va_02_creditos in 'va_02_creditos.pas' {va_creditos: TFrame},
  va_03_debitos2 in 'va_03_debitos2.pas' {va_debitos2},
  va_04_grupos in 'va_04_grupos.pas' {va_grupos},
  va_05_dm in 'va_05_dm.pas' {DM: TDataModule},
  va_02_credito in 'va_02_credito.pas' {va_credito},
  va_07_categ_cad in 'va_07_categ_cad.pas' {va_cat_CAD},
  va_06_categorias in 'va_06_categorias.pas' {va_categorias},
  va_08_grupos_cad in 'va_08_grupos_cad.pas' {va_08_grupo_c},
  va_09_grupos_inc in 'va_09_grupos_inc.pas' {va_09_grupos_in},
  va_00_menu in 'va_00_menu.pas' {menu},
  uFormat in 'Units\uFormat.pas',
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  u99Permissions in 'u99Permissions.pas',
  cUsuario in 'cUsuario.pas',
  cLancamento in 'cLancamento.pas',
  cCategoria in 'cCategoria.pas',
  va_10_participante in 'va_10_participante.pas' {participantes},
  UnitPrincipal in 'Fontes\UnitPrincipal.pas' {FrmPrincipal},
  Unit3 in 'Fontes\Unit3.pas' {Form3},
  Unit2 in 'Fontes\Unit2.pas' {Form2},
  uSuperChartLight in 'Fontes\Units\uSuperChartLight.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(Tparticipantes, participantes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
