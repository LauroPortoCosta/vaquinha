unit va_02_credito;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
   REST.Types,
   Data.DB,
   FireDAC.DApt,
   FireDAC.Stan.Intf,
   FireDAC.Comp.DataSet,
   FireDAC.Comp.Client,
   XMLDoc,
   XMLIntf, FMX.WebBrowser, Web.HTTPApp, FMX.Ani,
   uSuperChartLight,
   System.JSON;




type
  Tva_credito = class(TForm)
    Lay01_cabecalho: TLayout;
    Rect1_cabecalho: TRectangle;
    Lay2_direito: TLayout;
    Img2_direita: TImage;
    Lay1_esquerdo: TLayout;
    Img1_esquerda: TImage;
    Label16: TLabel;
    xxxx: TImage;
    Layout2: TLayout;
    Label2: TLabel;
    img_refresh: TImage;
    VertScrollBox1: TVertScrollBox;
    Rectangle1: TRectangle;
    layout_chart1: TLayout;
    Rectangle2: TRectangle;
    layout_chart2: TLayout;
    Rectangle3: TRectangle;
    layout_chart3: TLayout;
    ArcBase1: TArc;
    ArcValor1: TArc;
    lblValor1: TLabel;
    AnimationArc1: TFloatAnimation;
    ArcBase2: TArc;
    ArcValor2: TArc;
    lblValor2: TLabel;
    AnimationArc2: TFloatAnimation;
    Layout1: TLayout;
    Label1: TLabel;
    Label3: TLabel;
    procedure Img2_direitaClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure img_refreshClick(Sender: TObject);
    procedure MontarGrafico1;
    procedure MontarGraficos;
    procedure MontarGrafico2;
    procedure MontarGrafico3;
    procedure MontarGrafico4;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    procedure FormatXML;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  va_credito: Tva_credito;

implementation

{$R *.fmx}

uses va_05_dm, Unit2, Unit3, va_01_abertura;



procedure Tva_credito.Image4Click(Sender: TObject);
var
 VALOR  : integer ;
 VALOR2 : integer ;
 Result : Boolean ;
 erro   : string  ;
 resultado_da_soma : integer;
 quem_e_o_usuario  : integer;
 quem_e_o_grupo    : integer;
 begin

     quem_e_o_usuario := 0 ;
     quem_e_o_grupo   := StrToInt(va_abertura.ID_PUBLICO) ;

     ShowMessage('96  '+va_abertura.ID_PUBLICO+' -------- '+va_abertura.ID_LANCAMENTO_P );


//..............................................................................=  Gera Qry  Nome, participante(cota)
       va_05_dm.DM.RESTRequest_usuario.Execute        ;                         //
       va_05_dm.DM.RESTRequest_identificadorG.Execute ;                         //   arquivo      =>    id - usuario
       va_05_dm.DM.FDLocalSQL_APP.Active := False     ;                         //                      =
       va_05_dm.DM.FDLocalSQL_APP.DataSets.Clear      ;                         //                      id_usuario - identificado
                                                                                //                --------------------------------
   with va_05_dm.DM.FDLocalSQL_APP.DataSets.Add    do                           //   campos        =>   grupo
       begin                                                                    //                        =
           Name    := 'usuario';                                                //                      grupo
           DataSet := va_05_dm.DM.FDMemTable_usuario;                           //                     -------
       end;                                                                     //   usuario         nome : lauro,    grupo : 0,  id         : 0
   with va_05_dm.DM.FDLocalSQL_APP.DataSets.Add    do                           //   identificado    cota : 3         grupo : 0,  id_usuario : 0
       begin                                                                    //                   ...........................................
          Name    := 'identificador';                                           //   usuario         nome : Marilaine,grupo : 0,  id         : 1
          DataSet := va_05_dm.DM.FDMemTable_identificadorG;                     //   identificado    cota : 1         grupo : 0,  id_usuario : 0
       end;                                                                     //--------------------------------------------------------------
      va_05_dm.DM.FDConnection_APP.Connected := True;                           //   total ........:
      va_05_dm.DM.FDLocalSQL_APP.Active      := True;
      va_05_dm.DM.FDQuery_APP.Close;                                            //   usuario         nome : lauro,    grupo : 1,  id         : 0
      va_05_dm.DM.FDQuery_APP.Connection     := va_05_dm.DM.FDConnection_APP;   //   identificado    cota : 1         grupo : 1,  id_usuario : 0
      va_05_dm.DM.FDQuery_APP.SQL.Clear;
      va_05_dm.DM.FDQuery_APP.SQL.Add('SELECT');
      va_05_dm.DM.FDQuery_APP.SQL.Add('u.nome,');
      va_05_dm.DM.FDQuery_APP.SQL.Add('i.participantes');
      va_05_dm.DM.FDQuery_APP.SQL.Add('FROM usuario u');
      va_05_dm.DM.FDQuery_APP.SQL.Add('INNER JOIN identificador i');
      va_05_dm.DM.FDQuery_APP.SQL.Add('ON u.id = i.id_usuario');
      va_05_dm.DM.FDQuery_APP.SQL.Add('WHERE i.grupo = :grupo');
      va_05_dm.DM.FDQuery_APP.ParamByName('grupo').AsInteger := quem_e_o_grupo;      // SO PARA TESTE
      va_05_dm.DM.FDQuery_APP.SQL.Add('ORDER BY u.nome');
      va_05_dm.DM.FDQuery_APP.Open;
      va_05_dm.DM.FDQuery_APP.First;

      while not va_05_dm.DM.FDQuery_APP.Eof do
      begin
        ShowMessage('----'); // Com Grupo = 0 // Encontrei 2 registros - Com NOME  e quantiade de CONTAS
        ShowMessage('Nome...:  '+va_05_dm.DM.FDQuery_APP.FieldByName('nome').AsString +' - Quantidade :' +va_05_dm.DM.FDQuery_APP.FieldByName('participantes').AsString);
        resultado_da_soma:=resultado_da_soma+StrToInt(va_05_dm.DM.FDQuery_APP.FieldByName('participantes').AsString );
        va_05_dm.DM.FDQuery_APP.Next;
      end;
//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------
       va_05_dm.DM.FDLocalSQL_lancamento2.Active := True;
       va_05_dm.DM.RESTRequest_lancamento2.Execute;
       va_05_dm.DM.FDQuery_lancamento2.Close;
       va_05_dm.DM.FDQuery_lancamento2.Connection := va_05_dm.DM.conn2; // neste caso eu conectei com CONN2

    try
        with va_05_dm.DM.FDQuery_lancamento2 do
        begin
            Active := false;
            sql.Clear;
            sql.Add('SELECT sum(valor) as VALOR, sum(valor2) as VALOR2');    //  um BUG com os centavos , acrescentou o (CAST .... AS REAL) para resolver o problema
            sql.Add('FROM lancamento2 ');
            sql.Add('WHERE usuario = :ID');
            ParamByName('ID').Value := quem_e_o_usuario ;
            Open;
            Active := True;
        end;
        VALOR := va_05_dm.DM.FDQuery_lancamento2.FieldByName('valor').Value;
        VALOR2:= va_05_dm.DM.FDQuery_lancamento2.FieldByName('valor2').Value;
    finally
        Result := true;
        erro := '';
    end;
      ShowMessage('No Grupo ZERO tenho, '+IntToStr(resultado_da_soma)+' Cotas,  e o meu valor é  ['+IntToStr(VALOR)+']');
 end;



procedure Tva_credito.Img2_direitaClick(Sender: TObject);
begin
  close;
end;



procedure Tva_credito.img_refreshClick(Sender: TObject);
begin
MontarGraficos;
end;

procedure Tva_credito.Label1Click(Sender: TObject);
begin
    Form2.Show;

end;

procedure Tva_credito.Label3Click(Sender: TObject);
begin
    Form3.Show;

end;

procedure Tva_credito.FormatXML;
var
  XML: IXMLDocument;
begin
  XML := TXMLDocument.Create(nil);
  XML.LoadFromFile('C:\Temp\usuario.xml');
  XML.Active := True;
  XML.SaveToFile('C:\Temp\usuario_formatado.xml');
end;



procedure Tva_credito.MontarGrafico1;
var
    chart : TSuperChart;  //      SupAaerChart;    //TSuperChart
    jsonStr, erro: string;
begin
    try
        chart := TSuperChart.Create(layout_chart1, Lines);

        // Valores...
        chart.ShowValues := true;
        chart.FontSizeValues := 10;
        chart.FontColorValues := $FFFFFFFF; // BRANCO
        chart.FormatValues := '#,##0.00';


        // Linhas...
        chart.LineColor := $FFFFFFFF; // BRANCO
        //chart.ShowBackground := true;
        //chart.BackgroundColor := $FF4F5060; // CINHZA CLARO
        //chart.RoundedBotton := true;
        //chart.RoundedTop := true;

        // Argumentos...
        chart.FontSizeArgument := 9;
        chart.FontColorArgument := $FFFFFFFF; // BRANCO

        // Json...
        jsonStr := '[{"field":"Olha", "valor":220}, {"field":"Fev", "valor":580}, {"field":"Mar", "valor":750},';
        jsonStr := jsonStr + '{"field":"Abr", "valor":600}, {"field":"Mai", "valor":700}, {"field":"Jun", "valor":800},';
        jsonStr := jsonStr + '{"field":"Jul", "valor":950}, {"field":"Ago", "valor":1100}, {"field":"Set", "valor":950},';
        jsonStr := jsonStr + '{"field":"Out", "valor":800}, {"field":"Nov", "valor":700}, {"field":"Dez", "valor":900}]';

        // Render do grafico...
        chart.LoadFromJSON(jsonStr, erro);

        if NOT erro.IsEmpty then
            showmessage(erro);

    finally
        chart.DisposeOf;
    end;
end;


procedure Tva_credito.MontarGrafico2; // -->       //  GRAFICO 2
var
    chart: TSuperChart;                                                         // a funçao de uSuper....
    jsonStr, erro: string;                                                      // duas string
begin
    try
        chart := TSuperChart.Create(layout_chart2, Lines);                      // criar o layout com ajuda do TSuper....

        // Valores...
        chart.ShowValues := true;                                               // se eu quero divulgar o nomes .... SIM ou NAO
        chart.FontSizeValues := 11;                                             // é uma variavel inteira e inicia com 12
        chart.FontColorValues := $FF6C6C6C;  // CINZA CLARO                     // CINZA CLARO   // inicia com quase preto
        chart.FormatValues := '';           // '#,##0.00'                       // inicia com '' vazio

        // Linhas...
        chart.LineColor := $FF487DF7; // AZUL CLARO

        // Argumentos...
        chart.FontSizeArgument := 11;
        chart.FontColorArgument := $FF6C6C6C;   // CINZA CLARO


        // Json...

        jsonStr := '[{"field":"lauro", "valor":520}, {"field":"marcio", "valor":400}, {"field":"ju", "valor":840},';
        jsonStr := jsonStr + '{"field":"Abr", "valor":200}, {"field":"Mai", "valor":997}, {"field":"Jun", "valor":1270}]';


        // Render do grafico...
        chart.LoadFromJSON(jsonStr, erro);

        if NOT erro.IsEmpty then
            showmessage(erro);

    finally
        chart.DisposeOf;
    end;
end;


// Gauge...
procedure Tva_credito.MontarGrafico3;
var
    vl_previsto, vl_realizado: double;
begin
    vl_previsto := 10000;
    vl_realizado := 7200;

    lblValor1.Text := FormatFloat('#,##0.00', vl_realizado);

    //ArcValor1.EndAngle := (vl_realizado / vl_previsto) * 360;
    AnimationArc1.StopValue := (vl_realizado / vl_previsto) * 360;
    AnimationArc1.Start;
end;

procedure Tva_credito.MontarGrafico4;
var
    vl_previsto, vl_realizado: double;
begin
    vl_previsto := 50000;
    vl_realizado := 12500;

    lblValor2.Text := FormatFloat('0.00%', vl_realizado / vl_previsto * 100);

    AnimationArc2.StopValue := (vl_realizado / vl_previsto) * 360;
    AnimationArc2.Start;
end;


procedure Tva_credito.MontarGraficos;
begin
    MontarGrafico1;

    TThread.CreateAnonymousThread(procedure
    begin
        sleep(500);

        TThread.Synchronize(nil, MontarGrafico2);
    end).Start;

    TThread.CreateAnonymousThread(procedure
    begin
        sleep(500);

        TThread.Synchronize(nil, MontarGrafico3);
    end).Start;

    TThread.CreateAnonymousThread(procedure
    begin
        sleep(500);

        TThread.Synchronize(nil, MontarGrafico4);
    end).Start;
end;



end.



{//-----------------------------------------------------------------------------------------------------
   xx:='0'; // representa o id
   dd:='0';// reprsenta o grupo
//   ShowMessage('*****  TRABALHO TESTE  **** ');
    with va_05_dm.DM do
    begin
      RESTRequest_identificadorG.Execute;
      if va_05_dm.DM.FDMemTable_identificadorG.Locate( 'grupo;id', VarArrayOf([dd,xx]),[]) then
           begin
               dd  := va_05_dm.DM.FDMemTable_identificadorG.FieldByName('id_usuario').AsString;
               yy  := va_05_dm.DM.FDMemTable_identificadorG.FieldByName('participantes').AsInteger;
           end;
    end;
//    ShowMessage(  'Mostra tregistros       id_usuario : [ ' + dd +']    valor de participantes  [ '+intToStr(yy)+' ]' );
//ShowMessage(' projeto 1 do lauro');
    with va_05_dm.DM do
    begin
       FDLocalSQL_usuario.Active := True;
       RESTRequest_usuario.Execute;
       FDQuery_usuario.Connection := conn;
       FDQuery_usuario.SQL.Text   :=  'SELECT * FROM usuario WHERE status=''s''';
       FDQuery_usuario.Open;
    end;
//     ShowMessage(  'Nome: ' +  va_05_dm.DM.FDQuery_usuario.FieldByName('nome').AsString);
//ShowMessage('inicio projeto 1');
//------------------------------------------------------------------------------------------------------------
     va_05_dm.DM.FDLocalSQL_usuario.Active := True;
     va_05_dm.DM.FDLocalSQL_usuario.DataSets.Clear;
     Item         := va_05_dm.DM.FDLocalSQL_usuario.DataSets.Add;
     Item.Name    := 'usuario';
     Item.DataSet := va_05_dm.DM.FDMemTable_usuario;
     va_05_dm.DM.RESTRequest_usuario.Execute;
     va_05_dm.DM.FDQuery_usuario.Connection := va_05_dm.DM.conn;
     va_05_dm.DM.FDQuery_usuario.SQL.Text   :=  'SELECT * FROM usuario WHERE status=''s''';
     va_05_dm.DM.FDQuery_usuario.Open;
//     ShowMessage(  'Nome: ' +  va_05_dm.DM.FDQuery_usuario.FieldByName('nome').AsString);
//ShowMessage('fim projeto 1');
//------------------------------------------------------------------------------------------------------------
ShowMessage('inicio projeto 2');
    with va_05_dm.DM do
    begin
            FDLocalSQL_usuario.DataSets.Clear;
            with FDLocalSQL_usuario.DataSets.Add do
                 begin
                      Name    := 'usuario';
                      DataSet := FDMemTable_usuario;
                 end;
               RESTRequest_usuario.Execute;
               ShowMessage('MemTable: ' + IntToStr(FDMemTable_usuario.RecordCount));  // O resultado aqui é 4
               FDLocalSQL_usuario.Active := True;
               FDQuery_usuario.Close;
               FDQuery_usuario.SQL.Text := 'SELECT * FROM usuario';
               FDQuery_usuario.Connection := conn;
          FDQuery_usuario.Close;
          FDQuery_usuario.Connection := conn;
          FDQuery_usuario.SQL.Text := 'SELECT * FROM usuario';
          FDQuery_usuario.Open;
//ShowMessage('fim projeto 2');
//--------------------------------------------------------------------------------------------------------------
//       FDMemTable_usuario.SaveToFile('c:\temp\usuario.xml',  sfXML);
//       FDMemTable_usuario.LoadFromFile('c:\temp\usuario.xml');
//       ShowMessage('ok');
//    end;
//    FormatXML;




