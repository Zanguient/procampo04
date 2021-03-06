unit VariedadeCulturaEntidade;

interface
  type
    TVariedadeCulturaEntidade = class
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

{ TVariedadeCulturaEntidade }

procedure TVariedadeCulturaEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TVariedadeCulturaEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TVariedadeCulturaEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
