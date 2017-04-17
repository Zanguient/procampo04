unit RegistroAtividadeAtividadesEntidade;

interface

uses
  AtividadeEntidade, ProdutoEntidade;
  type
    TRegistroAtividadeAtividadesEntidade = class
      private
        FCodigo: Integer;
        FCodigoRegistroAtividade: integer;
        FAtividade: TAtividadeEntidade;
        FDataAtividade: TDate;
        FProduto: TProdutoEntidade;
        FQuantidade: double;
        FUnidade: AnsiString;
        FObservacao: AnsiString;

        procedure SetAtividade(const Value: TAtividadeEntidade);
        procedure SetCodigo(const Value: Integer);
        procedure SetCodigoRegistroAtividade(const Value: integer);
        procedure SetDataAtividade(const Value: TDate);
        procedure SetObservacao(const Value: AnsiString);
        procedure SetProduto(const Value: TProdutoEntidade);
        procedure SetQuantidade(const Value: double);
        procedure SetUnidade(const Value: AnsiString);

      public
        property Codigo: Integer read FCodigo write SetCodigo;
        property CodigoRegistroAtividade: integer read FCodigoRegistroAtividade write SetCodigoRegistroAtividade;
        property Atividade: TAtividadeEntidade read FAtividade write SetAtividade;
        property DataAtividade: TDate read FDataAtividade write SetDataAtividade;
        property Produto: TProdutoEntidade read FProduto write SetProduto;
        property Quantidade: double read FQuantidade write SetQuantidade;
        property Unidade: AnsiString read FUnidade write SetUnidade;
        property Observacao: AnsiString read FObservacao write SetObservacao;

    end;
implementation

{ TRegistroAtividadeAtividadesEntidade }

procedure TRegistroAtividadeAtividadesEntidade.SetAtividade(
  const Value: TAtividadeEntidade);
begin
  FAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetCodigoRegistroAtividade(
  const Value: integer);
begin
  FCodigoRegistroAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetDataAtividade(
  const Value: TDate);
begin
  FDataAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetObservacao(
  const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetProduto(
  const Value: TProdutoEntidade);
begin
  FProduto := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetQuantidade(
  const Value: double);
begin
  FQuantidade := Value;
end;

procedure TRegistroAtividadeAtividadesEntidade.SetUnidade(
  const Value: AnsiString);
begin
  FUnidade := Value;
end;

end.
