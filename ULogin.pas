unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Mask, StdCtrls, ADODB, DB, Grids, DBGrids, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Mensagens, Log, Constantes,
  ComandoSQLEntidade, GeradorDeCodigo, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPScxCommon, cxPropertiesStore, cxEditRepositoryItems, MetodosBasicos,
  AtividadeEntidade, AtividadeDominio, Vcl.Menus, cxButtons, LoginEntidade,
  LoginDominio;

type
  TFrmLogin = class(TForm)
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    LblMarca: TLabel;
    EdtUsuario: TEdit;
    Label1: TLabel;
    EdtSenha: TEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qryConsultaCodigo: TIntegerField;
    qryConsultaNome: TStringField;
    qryConsultaLogin: TStringField;
    qryConsultaSenha: TStringField;
    qryConsultaCodigo_Perfil: TIntegerField;
    qryConsultaData_Cadastro: TDateTimeField;
    Image1: TImage;
    Shape1: TShape;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure MEdtData_CadastroExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    CodigoPropriedade: Integer;
    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FLogin: TLoginEntidade;
    FLoginDominio: TLoginDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
  public
    ativo, enderec, achei: boolean;
    FUsuario: TLoginEntidade;
    constructor Create(AOwnder: TComponent);
  protected
  end;

var
  FrmLogin: TFrmLogin;
implementation

uses UDM, UPrincipal, UEscolha_Propriedade, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

constructor TFrmLogin.Create(AOwnder: TComponent);
begin
  inherited Create(AOwnder);
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta], Conexao);
end;

procedure TFrmLogin.cxButton1Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  FUsuario:= TLoginEntidade.Create;
  FLoginDominio:= TLoginDominio.Create(Conexao);

  if (FLoginDominio.Buscar(qryConsulta, EdtUsuario.Text, EdtSenha.Text, Retorno)=0) then
  begin
    Mensagens.MensagemErro('Usu�rio n�o encontrado.');
    EdtUsuario.SetFocus;
  end
  else
  begin
    FUsuario.Codigo:= qryConsultaCodigo.AsInteger;
    FUsuario.Login:= qryConsultaNome.AsString;
    FUsuario.Senha:= qryConsultaSenha.AsString;
    ModalResult:= mrOk;
    //Application.CreateForm(TFrmEscolha_Propriedade, FrmEscolha_Propriedade);
    //FrmEscolha_Propriedade:= TFrmEscolha_Propriedade.Create(nil);
    //FrmEscolha_Propriedade.ShowModal;
    //FrmEscolha_Propriedade.Release;
    //FrmLogin.Close;
  end;
end;

procedure TFrmLogin.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TOperacoesConexao.ConfirmaConexao(Conexao);
  Action:= caFree;
  //Action:= caFree;
  //FrmLogin:= nil;
end;

procedure TFrmLogin.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmLogin.MEdtData_CadastroExit(Sender: TObject);
begin
end;

{initialization
  RegisterClass(TFrmCadastro_Atividade);

finalization
  UnRegisterClass(TFrmCadastro_Atividade);}

end.
