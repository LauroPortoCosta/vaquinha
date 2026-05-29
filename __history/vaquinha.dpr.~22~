program vaquinha;

uses
  System.StartUpCopy,
  FMX.Forms,
  va_00_menu in 'va_00_menu.pas' {menu},
  va_01_abertura in 'va_01_abertura.pas' {va_abertura},
  va_02_creditos in 'va_02_creditos.pas' {va_creditos: TFrame},
  va_03_debitos in 'va_03_debitos.pas' {va_debitos},
  va_04_grupos in 'va_04_grupos.pas' {va_grupos},
  va_05_dm in 'va_05_dm.pas' {DM: TDataModule},
  va_02_credito in 'va_02_credito.pas' {va_credito},
  va_06_categorias in 'va_06_categorias.pas' {va_categorias},
  va_07_categ_cad in 'va_07_categ_cad.pas' {va_cat_CAD};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tmenu, menu);
  Application.Run;
end.
