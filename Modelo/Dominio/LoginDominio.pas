unit LoginDominio;

interface

uses
  LoginEntidade, ComandoSQLDominio, ADODB;
type
  TLoginDominio = class
    private
      Conexao: TADOConnection;
      FLogin: TLoginEntidade;
      FLoginDAO: TExecutaComandosSQLDominio;
    public
      function Buscar(var Query: TADOQuery; Login, Senha: AnsiString; var Retorno: AnsiString): Integer;
      constructor Create(var Conexao: TADOConnection);
  end;
implementation

uses
  ComandoSQLEntidade;

{ TLoginDominio }

function TLoginDominio.Buscar(var Query: TADOQuery; Login, Senha: AnsiString; var Retorno: AnsiString): Integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Usuario where Login = :Login and Senha = :Senha';
    FComandoSQL.Parametros.Add('Login');
    FComandoSQL.Parametros.Add('Senha');
    FComandoSQL.Valores.Add(Login);
    FComandoSQL.Valores.Add(Senha);
    FLoginDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TLoginDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

end.
