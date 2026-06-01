unit va_00_menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects;

type
  Tmenu = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

uses va_01_abertura;

procedure Tmenu.Image1Click(Sender: TObject);
begin

   if   not Assigned(va_abertura) then                              // pergunta se o programa ja existe, se nao cria
     Application.CreateForm(Tva_abertura ,va_abertura);                   // cria o formulario
 va_abertura.Show;

end;

end.
