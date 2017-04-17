unit PropriedadeEntidade;

interface

uses
  CidadeEntidade;
  type
    TPropriedadeEntidade = class
    private
      FCodigo: integer;
      FNomeFazenda: AnsiString;
      FProprietario: AnsiString;
      FEndereco: AnsiString;
      FCidade: TCidadeEntidade;
      FTelefone: AnsiString;
      FCelular: AnsiString;
      FArea: AnsiString;
      FSite: Ansistring;
      FEmail: AnsiString;
      FDataCadastro: TDate;

      procedure SetArea(const Value: AnsiString);
      procedure SetCelular(const Value: AnsiString);
      procedure SetCidade(const Value: TCidadeEntidade);
      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDate);
      procedure SetEmail(const Value: AnsiString);
      procedure SetEndereco(const Value: AnsiString);
      procedure SetNomeFazenda(const Value: AnsiString);
      procedure SetProprietario(const Value: AnsiString);
      procedure SetSite(const Value: Ansistring);
      procedure SetTelefone(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property NomeFazenda: AnsiString read FNomeFazenda write SetNomeFazenda;
      property Proprietario: AnsiString read FProprietario write SetProprietario;
      property Endereco: AnsiString read FEndereco write SetEndereco;
      property Cidade: TCidadeEntidade read FCidade write SetCidade;
      property Telefone: AnsiString read FTelefone write SetTelefone;
      property Celular: AnsiString read FCelular write SetCelular;
      property Area: AnsiString read FArea write SetArea;
      property Site: Ansistring read FSite write SetSite;
      property Email: AnsiString read FEmail write SetEmail;
      property DataCadastro: TDate read FDataCadastro write SetDataCadastro;

    end;
implementation

{ TPropriedadeEntidade }

procedure TPropriedadeEntidade.SetArea(const Value: AnsiString);
begin
  FArea := Value;
end;

procedure TPropriedadeEntidade.SetCelular(const Value: AnsiString);
begin
  FCelular := Value;
end;

procedure TPropriedadeEntidade.SetCidade(const Value: TCidadeEntidade);
begin
  FCidade := Value;
end;

procedure TPropriedadeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPropriedadeEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TPropriedadeEntidade.SetEmail(const Value: AnsiString);
begin
  FEmail := Value;
end;

procedure TPropriedadeEntidade.SetEndereco(const Value: AnsiString);
begin
  FEndereco := Value;
end;

procedure TPropriedadeEntidade.SetNomeFazenda(const Value: AnsiString);
begin
  FNomeFazenda := Value;
end;

procedure TPropriedadeEntidade.SetProprietario(const Value: AnsiString);
begin
  FProprietario := Value;
end;

procedure TPropriedadeEntidade.SetSite(const Value: Ansistring);
begin
  FSite := Value;
end;

procedure TPropriedadeEntidade.SetTelefone(const Value: AnsiString);
begin
  FTelefone := Value;
end;

end.
