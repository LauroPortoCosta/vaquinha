unit va_10_participante;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts;

type
  Tparticipantes = class(TForm)
    Lay01_cabecalho: TLayout;
    Rect1_cabecalho: TRectangle;
    LayA_direito: TLayout;
    Img2_direita: TImage;
    Label2: TLabel;
    Lay2_rodape: TLayout;
    Rectangle1: TRectangle;
    Label6: TLabel;
    Lay3_central: TLayout;
    Rect_central: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    Image3: TImage;
    Edit1: TEdit;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Rectangle3: TRectangle;
    Label5: TLabel;
    ListView1: TListView;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  participantes: Tparticipantes;

implementation

{$R *.fmx}

end.
