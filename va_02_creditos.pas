unit va_02_creditos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts,
   REST.Types,
   Data.DB,
   FireDAC.Stan.Intf,
   FireDAC.Comp.Client ;

   // acrescentado o
   // System.SysUtils,
   // System.Classes,
   // Data.DB,
   // FireDAC.Comp.Client,
   // FireDAC.Stan.Intf;


type
  Tva_creditos = class(TFrame)
    Lay01_cabecalho: TLayout;
    Rect1_cabecalho: TRectangle;
    Lay02_saldo: TLayout;
    Img2_direita: TImage;
    Img1_esquerda: TImage;
    Lay2_direito: TLayout;
    Lay1_esquerdo: TLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses va_05_dm;

procedure Tva_creditos.Button1Click(Sender: TObject);
begin
   ShowMessage('-----');
end;

procedure Tva_creditos.Image4Click(Sender: TObject);
begin
    ShowMessage('01');
{
    with va_05_dm.DM do
    begin
    ShowMessage('02');
       RESTRequest_usuario.Execute;
    ShowMessage('03');
       FDQuery_usuario.Close;
       FDQuery_usuario.SQL.Text :='SELECT * FROM usuario';
       FDQuery_usuario.Open;
       FDQuery_usuario.RecordCount;
 ShowMessage('Conteudo Registros :'+IntToStr(FDQuery_usuario.RecordCount));
       FDQuery_usuario.FieldByName('nome').AsString;
       FDMemTable_usuario.SaveToFile('usuario.xml',sfXML);
       FDMemTable_usuario.SaveToFile('usuario.xml', TFDStorageFormat.sfXML);
       RESTRequest_usuario.Execute;

       FDMemTable_usuario.SaveToFile(  'c:\temp\usuario.xml',  sfXML);
       FDMemTable_usuario.LoadFromFile(  'c:\temp\usuario.xml');

    end;    }
end;

end.
