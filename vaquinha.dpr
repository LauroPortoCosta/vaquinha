program vaquinha;

uses
  System.StartUpCopy,
  FMX.Forms,
  va_00_menu in 'va_00_menu.pas' {menu},
  va_01_abertura in 'va_01_abertura.pas' {va_abertura},
  va_02_creditos in 'va_02_creditos.pas' {va_creditos: TFrame},
  va_03_debitos in 'va_03_debitos.pas' {va_debitos},
  va_04_grupos in 'va_04_grupos.pas' {va_grupos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu, menu);
  Application.CreateForm(Tva_abertura, va_abertura);
  Application.CreateForm(Tva_debitos, va_debitos);
  Application.CreateForm(Tva_grupos, va_grupos);
  Application.Run;
end.
