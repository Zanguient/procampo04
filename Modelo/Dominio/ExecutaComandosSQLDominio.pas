unit ExecutaComandosSQLDominio;

interface

uses
  ExecutaComandosSQLDAO, ComandoSQLEntidade, ADODB;
  type
    TExecutaComandosSQLDominio = class
      private
        FExecutaComandosSQLDAO: TExecutaComandosSQLDAO;
        FComando: TComandoSQLEntidade;
      public
        function ExecutaComandoSQLSalvarAlterarExcluir(var Retorno: AnsiString): Integer;
        function ExecutaComandoSQLRetornaADOQuery(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var FComandoSQL: TComandoSQLEntidade);

    end;
implementation

{ TExecutaComandosSQLDominio }

constructor TExecutaComandosSQLDominio.Create(
  var FComandoSQL: TComandoSQLEntidade);
begin
  Self.FComando:= FComandoSQL;
  FExecutaComandosSQLDAO:= TExecutaComandosSQLDAO.Create(FComandoSQL);
end;

function TExecutaComandosSQLDominio.ExecutaComandoSQLRetornaADOQuery(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
begin
  try
    Result:= FExecutaComandosSQLDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TExecutaComandosSQLDominio.ExecutaComandoSQLSalvarAlterarExcluir(var Retorno: AnsiString): Integer;
begin
  try
    Result:= FExecutaComandosSQLDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
