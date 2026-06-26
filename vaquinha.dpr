program vaquinha;

uses
  System.StartUpCopy,
  FMX.Forms,
  va_01_abertura in 'va_01_abertura.pas' {va_abertura},
  va_02_creditos in 'va_02_creditos.pas' {va_creditos: TFrame},
  va_03_debitos in 'va_03_debitos.pas' {va_debitos},
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
  cCategoria in 'cCategoria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
