unit ProdutoEntidade;

interface

uses
  GrupoProdutoEntidade, MarcaEntidade, PropriedadeEntidade;
  type
    TProdutoEntidade = class
      private
        FCodigo: integer;
        FCodigoPropriedade: TPropriedadeEntidade;
        FCodigoProduto: AnsiString;
        FDescricao: AnsiString;
        FPrecoCompra: double;
        FQuantidade: double;
        FUnidade: AnsiString;
        FVolume: Double;
        FVolumeTotal: double;
        FDataCadastro: TDate;
        FDataUltimaCompra: TDate;
        FDataValidade: TDate;
        FObservacao: AnsiString;
        FAplicacao: AnsiString;
        FControlaEstoque: Boolean;
        FAtivo: Boolean;
        FCarencia: integer;
        FGrupoProduto: TGrupoProdutoEntidade;
        FMarca: TMarcaEntidade;

        procedure SetAplicacao(const Value: AnsiString);
        procedure SetAtivo(const Value: Boolean);
        procedure SetCarencia(const Value: integer);
        procedure SetCodigo(const Value: integer);
        procedure SetCodigoProduto(const Value: AnsiString);
        procedure SetCodigoPropriedade(const Value: TPropriedadeEntidade);
        procedure SetControlaEstoque(const Value: Boolean);
        procedure SetDataCadastro(const Value: TDate);
        procedure SetDataUltimaCompra(const Value: TDate);
        procedure SetDataValidade(const Value: TDate);
        procedure SetDescricao(const Value: AnsiString);
        procedure SetGrupoProduto(const Value: TGrupoProdutoEntidade);
        procedure SetMarca(const Value: TMarcaEntidade);
        procedure SetObservacao(const Value: AnsiString);
        procedure SetPrecoCompra(const Value: double);
        procedure SetQuantidade(const Value: double);
        procedure SetUnidade(const Value: AnsiString);
        procedure SetVolume(const Value: Double);
        procedure SetVolumeTotal(const Value: double);

      public
        property Codigo: integer read FCodigo write SetCodigo;
        property CodigoPropriedade: TPropriedadeEntidade read FCodigoPropriedade write SetCodigoPropriedade;
        property CodigoProduto: AnsiString read FCodigoProduto write SetCodigoProduto;
        property Descricao: AnsiString read FDescricao write SetDescricao;
        property PrecoCompra: double read FPrecoCompra write SetPrecoCompra;
        property Quantidade: double read FQuantidade write SetQuantidade;
        property Unidade: AnsiString read FUnidade write SetUnidade;
        property Volume: Double read FVolume write SetVolume;
        property VolumeTotal: double read FVolumeTotal write SetVolumeTotal;
        property DataCadastro: TDate read FDataCadastro write SetDataCadastro;
        property DataUltimaCompra: TDate read FDataUltimaCompra write SetDataUltimaCompra;
        property DataValidade: TDate read FDataValidade write SetDataValidade;
        property Observacao: AnsiString read FObservacao write SetObservacao;
        property Aplicacao: AnsiString read FAplicacao write SetAplicacao;
        property ControlaEstoque: Boolean read FControlaEstoque write SetControlaEstoque;
        property Ativo: Boolean read FAtivo write SetAtivo;
        property Carencia: integer read FCarencia write SetCarencia;
        property GrupoProduto: TGrupoProdutoEntidade read FGrupoProduto write SetGrupoProduto;
        property Marca: TMarcaEntidade read FMarca write SetMarca;


    end;
implementation

{ TProdutoEntidade }

procedure TProdutoEntidade.SetAplicacao(const Value: AnsiString);
begin
  FAplicacao := Value;
end;

procedure TProdutoEntidade.SetAtivo(const Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TProdutoEntidade.SetCarencia(const Value: integer);
begin
  FCarencia := Value;
end;

procedure TProdutoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TProdutoEntidade.SetCodigoProduto(const Value: AnsiString);
begin
  FCodigoProduto := Value;
end;

procedure TProdutoEntidade.SetCodigoPropriedade(
  const Value: TPropriedadeEntidade);
begin
  FCodigoPropriedade := Value;
end;

procedure TProdutoEntidade.SetControlaEstoque(const Value: Boolean);
begin
  FControlaEstoque := Value;
end;

procedure TProdutoEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TProdutoEntidade.SetDataUltimaCompra(const Value: TDate);
begin
  FDataUltimaCompra := Value;
end;

procedure TProdutoEntidade.SetDataValidade(const Value: TDate);
begin
  FDataValidade := Value;
end;

procedure TProdutoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TProdutoEntidade.SetGrupoProduto(const Value: TGrupoProdutoEntidade);
begin
  FGrupoProduto := Value;
end;

procedure TProdutoEntidade.SetMarca(const Value: TMarcaEntidade);
begin
  FMarca := Value;
end;

procedure TProdutoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TProdutoEntidade.SetPrecoCompra(const Value: double);
begin
  FPrecoCompra := Value;
end;

procedure TProdutoEntidade.SetQuantidade(const Value: double);
begin
  FQuantidade := Value;
end;

procedure TProdutoEntidade.SetUnidade(const Value: AnsiString);
begin
  FUnidade := Value;
end;

procedure TProdutoEntidade.SetVolume(const Value: Double);
begin
  FVolume := Value;
end;

procedure TProdutoEntidade.SetVolumeTotal(const Value: double);
begin
  FVolumeTotal := Value;
end;

end.
