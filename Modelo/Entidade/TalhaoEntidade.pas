unit TalhaoEntidade;

interface

uses
  PropriedadeEntidade;
  type
    TTalhaoEntidade = class
      private
        FCodigo: integer;
        FPropriedade: TPropriedadeEntidade;
        FNumeroTalhao: AnsiString;
        FDescricaoTalhao: AnsiString;
        FHectare: Double;
        FDataCadastro: TDate;

        procedure SetCodigo(const Value: integer);
        procedure SetDataCadastro(const Value: TDate);
        procedure SetDescricaoTalhao(const Value: AnsiString);
        procedure SetHectare(const Value: Double);
        procedure SetNumeroTalhao(const Value: AnsiString);
        procedure SetPropriedade(const Value: TPropriedadeEntidade);

      public
        property Codigo: integer read FCodigo write SetCodigo;
        property Propriedade: TPropriedadeEntidade read FPropriedade write SetPropriedade;
        property NumeroTalhao: AnsiString read FNumeroTalhao write SetNumeroTalhao;
        property DescricaoTalhao: AnsiString read FDescricaoTalhao write SetDescricaoTalhao;
        property Hectare: Double read FHectare write SetHectare;
        property DataCadastro: TDate read FDataCadastro write SetDataCadastro;

    end;
implementation

{ TTalhaoEntidade }

procedure TTalhaoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TTalhaoEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TTalhaoEntidade.SetDescricaoTalhao(const Value: AnsiString);
begin
  FDescricaoTalhao := Value;
end;

procedure TTalhaoEntidade.SetHectare(const Value: Double);
begin
  FHectare := Value;
end;

procedure TTalhaoEntidade.SetNumeroTalhao(const Value: AnsiString);
begin
  FNumeroTalhao := Value;
end;

procedure TTalhaoEntidade.SetPropriedade(const Value: TPropriedadeEntidade);
begin
  FPropriedade := Value;
end;

end.
