unit LoginEntidade;

interface
type
  TLoginEntidade = class
    private
      FCodigo: integer;
      FLogin: AnsiString;
      FSenha: AnsiString;
      procedure SetLogin(const Value: AnsiString);
      procedure SetSenha(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Login: AnsiString read FLogin write SetLogin;
      property Senha: AnsiString read FSenha write SetSenha;

  end;
implementation

{ TLoginEntidade }

procedure TLoginEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TLoginEntidade.SetLogin(const Value: AnsiString);
begin
  FLogin := Value;
end;

procedure TLoginEntidade.SetSenha(const Value: AnsiString);
begin
  FSenha := Value;
end;

end.
