unit GrupoProdutoEntidade;

interface
  type
    TGrupoProdutoEntidade = class
    private
      FCodigo: integer;
      FDescricao: AnsiString;
      FDataCadastro: TDate;

      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDate);
      procedure SetDescricao(const Value: AnsiString);

    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property DataCadastro: TDate read FDataCadastro write SetDataCadastro;


    end;
implementation

{ TGrupoProdutoEntidade }

procedure TGrupoProdutoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TGrupoProdutoEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TGrupoProdutoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
