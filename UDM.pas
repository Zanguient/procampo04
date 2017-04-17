unit UDM;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, ADODB;

type
  TDM = class(TDataModule)
    ImgComandos: TImageList;
    ADOConnection1: TADOConnection;
    ImgChama: TImageList;
    ImageList1: TImageList;
    ImgImagens_Consulta: TImageList;
    qrySafra: TADOQuery;
    qrySafraCodigo: TIntegerField;
    qrySafraDescricao: TStringField;
    qrySafraData_Cadastro: TDateTimeField;
    dsSafra: TDataSource;
    qryMotorista: TADOQuery;
    qryMotoristaCodigo: TIntegerField;
    qryMotoristaData_Cadastro: TDateTimeField;
    qryMotoristaTipoPessoa: TStringField;
    qryMotoristaNome: TStringField;
    qryMotoristaEndereco: TStringField;
    qryMotoristaCidade: TStringField;
    qryMotoristaSetor: TStringField;
    dsMotorista: TDataSource;
    qryTransportadora: TADOQuery;
    qryTransportadoraCodigo: TIntegerField;
    qryTransportadoraData_Cadastro: TDateTimeField;
    qryTransportadoraTipoPessoa: TStringField;
    qryTransportadoraNome: TStringField;
    qryTransportadoraEndereco: TStringField;
    qryTransportadoraCidade: TStringField;
    qryTransportadoraSetor: TStringField;
    dsTransportadora: TDataSource;
    qryArmazem: TADOQuery;
    qryArmazemCodigo: TIntegerField;
    qryArmazemData_Cadastro: TDateTimeField;
    qryArmazemTipoPessoa: TStringField;
    qryArmazemNome: TStringField;
    qryArmazemEndereco: TStringField;
    qryArmazemCidade: TStringField;
    qryArmazemSetor: TStringField;
    dsArmazem: TDataSource;
    dsProduto: TDataSource;
    qryProduto: TADOQuery;
    qryProdutoCodigo: TIntegerField;
    qryProdutoCodigo_Propriedade: TIntegerField;
    qryProdutoCodigo_Produto: TStringField;
    qryProdutoDescricao: TStringField;
    qryProdutoPreco_Compra: TFloatField;
    qryProdutoEstoque: TFloatField;
    qryProdutoUnidade_Compra: TStringField;
    qryProdutoUnidade_Estoque: TStringField;
    qryProdutoVolume: TFloatField;
    qryProdutoData_Cadastro: TDateTimeField;
    qryProdutoData_Ultima_Compra: TDateTimeField;
    qryProdutoData_Validade: TDateTimeField;
    qryProdutoObservacao: TStringField;
    qryProdutoAplicacao: TStringField;
    qryProdutoControla_Estoque: TBooleanField;
    qryProdutoAtivo: TBooleanField;
    qryProdutoCarencia: TIntegerField;
    qryProdutoCodigo_Grupo: TIntegerField;
    qryProdutoCodigo_Marca: TIntegerField;
    dsVeiculo: TDataSource;
    qryVeiculo: TADOQuery;
    qryVeiculoCodigo: TIntegerField;
    qryVeiculoPlaca: TStringField;
    qryVeiculoModelo: TStringField;
    qryVeiculoData_Cadastro: TDateTimeField;
    dsDepositante: TDataSource;
    qryDepositante: TADOQuery;
    qryDepositanteCodigo: TIntegerField;
    qryDepositanteData_Cadastro: TDateTimeField;
    qryDepositanteTipoPessoa: TStringField;
    qryDepositanteNome: TStringField;
    qryDepositanteEndereco: TStringField;
    qryDepositanteCidade: TStringField;
    qryDepositanteSetor: TStringField;
    dsProdutor: TDataSource;
    qryProdutor: TADOQuery;
    qryProdutorCodigo: TIntegerField;
    qryProdutorData_Cadastro: TDateTimeField;
    qryProdutorTipoPessoa: TStringField;
    qryProdutorNome: TStringField;
    qryProdutorEndereco: TStringField;
    qryProdutorCidade: TStringField;
    qryProdutorSetor: TStringField;
    qryAtividade: TADOQuery;
    qryAtividadeCodigo: TIntegerField;
    qryAtividadeDescricao: TStringField;
    qryAtividadeData_Cadastro: TDateTimeField;
    dsAtividade: TDataSource;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    qryVariedadeCultura: TADOQuery;
    qryVariedadeCulturaCodigo: TIntegerField;
    qryVariedadeCulturaDescricao: TStringField;
    qryVariedadeCulturaData_Cadastro: TDateTimeField;
    dsVariedadeCultura: TDataSource;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    qryTalhao: TADOQuery;
    qryTalhaoCodigo: TIntegerField;
    qryTalhaoCodigo_Propriedade: TIntegerField;
    qryTalhaoNumero_Talhao: TStringField;
    qryTalhaoDescricao_Talhao: TStringField;
    qryTalhaoArea: TFloatField;
    qryTalhaoData_Cadastro: TDateTimeField;
    dsTalhao: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  UAtualiza_BD;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  Atualizacao: TAtualiza_BD;
begin
  Atualizacao.Atualizacao;
end;

end.