unit CidadeEntidade;

interface
  type
    TCidadeEntidade = class
      private
        FCodigo: integer;
        FCidade: AnsiString;
        FUF: AnsiString;
        FDDD: AnsiString;
        FCodigoIBGE: AnsiString;
        FDataCadastro: TDate;

        procedure SetCodigo(const Value: integer);
        procedure SetCodigoIBGE(const Value: AnsiString);
        procedure SetDataCadastro(const Value: TDate);
        procedure SetDescricao(const Value: AnsiString);
        procedure SetUF(const Value: AnsiString);
        procedure SetDDD(const Value: AnsiString);
      public
        property Codigo: integer read FCodigo write SetCodigo;
        property Cidade: AnsiString read FCidade write SetDescricao;
        property UF: AnsiString read FUF write SetUF;
        property CodigoIBGE: AnsiString read FCodigoIBGE write SetCodigoIBGE;
        property DataCadastro: TDate read FDataCadastro write SetDataCadastro;
        property DDD: AnsiString read FDDD write SetDDD;

    end;
implementation

{ TCidadeEntidade }

procedure TCidadeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TCidadeEntidade.SetCodigoIBGE(const Value: AnsiString);
begin
  FCodigoIBGE := Value;
end;

procedure TCidadeEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TCidadeEntidade.SetDDD(const Value: AnsiString);
begin
  FDDD := Value;
end;

procedure TCidadeEntidade.SetDescricao(const Value: AnsiString);
begin
  FCidade := Value;
end;

procedure TCidadeEntidade.SetUF(const Value: AnsiString);
begin
  FUF := Value;
end;

end.
