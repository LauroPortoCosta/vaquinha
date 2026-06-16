unit va_01_abertura;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Ani;


type
  Tva_abertura = class(TForm)
    Lay01_cabecalho: TLayout;
    Lay02_saldo: TLayout;
    Lay03_debito_credito: TLayout;
    Lay04_menu: TLayout;
    Lay06_rodape: TLayout;
    Lay05_outros: TLayout;
    Circle1: TCircle;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Image2: TImage;
    Rectangle3: TRectangle;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    TXT_DEVEDOR: TLabel;
    TXT_CREDOR: TLabel;
    Rect6_cab: TRectangle;
    Label3: TLabel;
    TXT_DATA: TLabel;
    Lay07_LISTEBOX: TLayout;
    Rectangle7: TRectangle;
    Label4: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle12: TRectangle;
    Label7: TLabel;
    ListView1: TListView;
    Rectangle13: TRectangle;
    GradientAnimation1: TGradientAnimation;
    Rect7_cab: TRectangle;
    Img2_direita: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  va_abertura: Tva_abertura;

implementation

{$R *.fmx}

uses va_02_creditos, va_00_menu, va_03_debitos, va_04_grupos, va_05_dm,
  va_02_credito, va_06_categorias, va_07_categ_cad, va_08_grupos_cad,
  va_09_grupos_inc;


procedure Tva_abertura.Image3Click(Sender: TObject);
begin

   if   not Assigned(va_debitos) then                              // pergunta se o programa ja existe, se nao cria
            Application.CreateForm(Tva_debitos ,va_debitos);                   // cria o formulario
            va_debitos.Show;

end;

procedure Tva_abertura.Image4Click(Sender: TObject);
begin
     if not Assigned(va_credito) then
            Application.CreateForm(Tva_credito ,va_credito);
            va_credito.Show;
end;

procedure Tva_abertura.Image5Click(Sender: TObject);
begin
     if not Assigned(va_09_grupos_in) then
            Application.CreateForm(Tva_09_grupos_in ,va_09_grupos_in);
            va_09_grupos_in.Show;
end;

procedure Tva_abertura.Image6Click(Sender: TObject);
begin

      if not Assigned(va_categorias) then
             Application.CreateForm(Tva_categorias ,va_categorias);
             va_categorias.Show;
 end;

end.
