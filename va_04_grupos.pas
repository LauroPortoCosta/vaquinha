unit va_04_grupos;

interface

uses
 System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
 FMX.Types, FMX.Controls,  FMX.Forms,  FMX.Graphics,  FMX.Dialogs,  FMX.Controls.Presentation,
 FMX.Edit,  FMX.Objects,  FMX.Layouts,  FMX.StdCtrls,  FMX.Ani,   FMX.ScrollBox,
 FMX.Memo,  FMX.TabControl,  FMX.Grid,  FMX.ListView.Types,  FMX.ListView.Appearances,
 FMX.ListView.Adapters.Base,  FMX.ListView,  FMX.VirtualKeyboard,  FMX.Platform, System.Actions,
 FMX.ActnList,  Fmx.Bind.Editors,  REST.Types,  FireDAC.Stan.Intf,  FireDAC.Stan.Option,
 FireDAC.Stan.Param,  FireDAC.Stan.Error,  FireDAC.DatS,  FireDAC.Phys.Intf,  FireDAC.DApt.Intf,
 REST.Client,  REST.Authenticator.Basic,  Data.DB,  FireDAC.Comp.DataSet,  FireDAC.Comp.Client,
 REST.Response.Adapter,  Data.Bind.Components,  Data.Bind.ObjectScope,  System.Json.Types,
 System.Json.Readers,  System.Json.Writers,  System.Json,
 System.Rtti,   FMX.Grid.Style,  Data.Bind.EngExt,  Fmx.Bind.DBEngExt,  Fmx.Bind.Grid,
 System.Bindings.Outputs,  Data.Bind.Grid,   Data.Bind.DBScope, FMX.DialogService,
  FMX.DateTimeCtrls, FMX.Memo.Types;

type
  Tva_grupos = class(TForm)
    Lay01_cabecalho: TLayout;
    Rect1_cabecalho: TRectangle;
    Lay2_direito: TLayout;
    Img2_direita: TImage;
    Rect_central: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle3: TRectangle;
    Label5: TLabel;
    Lay2_rodape: TLayout;
    Rectangle1: TRectangle;
    Label6: TLabel;
    ListView1: TListView;
    Image1: TImage;
    Memo1: TMemo;
    procedure Img2_direitaClick(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
  private
    procedure grava_velho;
    procedure grava;
    procedure ThreadLoginTerminate(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  va_grupos: Tva_grupos;

implementation

{$R *.fmx}

uses va_05_dm;

procedure Tva_grupos.Img2_direitaClick(Sender: TObject);
begin
  close;
end;


procedure Tva_grupos.Rectangle1Click(Sender: TObject);
begin


        // criar grupo

        ShowMessage('  ola  ');
      //  grava;
        grava_velho;


end;

procedure Tva_grupos.grava_velho;
////////////////////////
///     G R A V A   ///
//////////////////////
var
  k              :Text         ;
  I, y           : Integer     ;
  tranf_objet    : TJSONObject ;
  tranf_array    : TJSONArray  ;
  tranf_value    : TJSONValue  ;  // nao funcionou
  a              : string      ;

  begin

  //       va_05_dm.DM.RESTClient_grupo.BaseURL:='https://laurolivro-606860-default-rtdb.firebaseio.com/tab_grupo/cod_grupo/.json?auth=gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg';
  //       va_05_dm.DM.RESTRequest_grupo.Method := TRESTRequestMethod.rmPATCH;
  //       va_05_dm.DM.RESTRequest_grupo.Params.Clear;                                                       // limpa o RESTRequest1
  //       va_05_dm.DM.RESTRequest_grupo.Params.AddItem;                                                     // adiciona item
  //       va_05_dm.DM.RESTRequest_grupo.Params.Items[0].name  := 'param';                                   // item = param
  //       cc:= '{"data":"25/05/2026","descricao":"Grupo de familia"}';                     // cc é uma string composta de um Json feito na mao
  //       va_05_dm.DM.RESTRequest_grupo.Params.Items[0].value :=cc;                                         // colocado dentro do RESTRequest1 o conteudo de cc
  //       va_05_dm.DM.RESTRequest_grupo.Params.Items[0].ContentType := ctAPPLICATION_JSON;                  // ct application
  //       va_05_dm.DM.RESTRequest_grupo.Params.Items[0].Kind := TRESTRequestParameterKind.pkGETorPOST;      // recebe um pk GET ou POST ( se não existir atualize )
  //       va_05_dm.DM.RESTRequest_grupo.Execute;


      va_05_dm.DM.RESTClient_grupo.BaseURL:='https://laurolivro-606860-default-rtdb.firebaseio.com/tab_grupo/cod_grupo/0.json?auth=gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg';
      va_05_dm.DM.RESTRequest_grupo.Method := TRESTRequestMethod.rmGET;
      va_05_dm.DM.RESTRequest_grupo.execute;

       a:= va_05_dm.DM.RESTResponse_grupo.Content ;

        ShowMessage(a);

//      Memo1.Text:=va_05_dm.DM.RESTRequest_grupo.Response.JSONText;
//      Memo1.Text:=va_05_dm.DM.RESTResponse_grupo.JSONText;





//        01) transformando o response em jsontext e mostrando no memo
//        neste momento o memo é carregado com a tabela completa separaddas por  [ ]

//          showmessage('mostrei a tabela completa 01 ');   // esta é a melhor tabela mostrada

// garantir que seja um array
    tranf_value :=TJSONObject.ParseJSONValue(a); // coloquei este comando , nao deu erro , mas nao teve efeito

    if (tranf_value is TJSONObject )   then
     begin
  //     FreeAndNil(tranf_value);
  //     tranf_value := TJSONObject.ParseJSONValue('['+RESTRequest1.Response.JSONText+']');  // nao funciona
  //     tranf_value := TJSONObject.ParseJSONValue(memo1.Text) as TJSONValue;               // nao funciona
    end;






 end;





 procedure Tva_grupos.grava;
var
  cc : string;
  xx : string;
begin
  xx := '0';
  cc := '{"status":"n"}';

  // URL BASE
  va_05_dm.DM.RESTClient_grupo.BaseURL :=
    'https://laurolivro-606860-default-rtdb.firebaseio.com';

  // RESOURCE
  va_05_dm.DM.RESTRequest_grupo.Resource := 'tab_grupo/cod_grupo/'+xx+'.json';

  // METODO
  va_05_dm.DM.RESTRequest_grupo.Method :=  TRESTRequestMethod.rmPATCH;

  // LIMPA PARAMETROS
  va_05_dm.DM.RESTRequest_grupo.Params.Clear;

  // TOKEN AUTH
  va_05_dm.DM.RESTRequest_grupo.AddParameter('auth', 'gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg', pkGETorPOST );

  // JSON BODY
  va_05_dm.DM.RESTRequest_grupo.AddBody(cc,ctAPPLICATION_JSON );

  // EXECUTA
  va_05_dm.DM.RESTRequest_grupo.Execute;



  cc:=va_05_dm.DM.RESTResponse_grupo.Content;
  ShowMessage('Salvo com sucesso'+cc);

end;




   procedure Tva_grupos.ThreadLoginTerminate(Sender: TObject);
begin // TRATANDO ERRO DENTRO DE UMA TTHREAD

    if Sender is TThread then
    begin
        if Assigned(TThread(Sender).FatalException) then
        begin
            showmessage(Exception(TThread(sender).FatalException).Message);
            exit;
        end;
    end;

 end;




















end.
