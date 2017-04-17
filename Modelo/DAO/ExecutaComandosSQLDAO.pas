unit ExecutaComandosSQLDAO;

interface

uses
  ComandoSQLEntidade, ADODB;
  type
    TExecutaComandosSQLDAO = class
      private
        qAux: TADOQuery;
        FComandoSQL: TComandoSQLEntidade;
      public
        function ExecutaComandoSQLSalvarAlterarExcluir(var Retorno: AnsiString): Integer;
        function ExecutaComandoSQLRetornaADOQuery(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var FComando: TComandoSQLEntidade);
    end;
implementation

uses
  SysUtils, Variants;

{ TExecutaComandosSQL }

constructor TExecutaComandosSQLDAO.Create(var FComando: TComandoSQLEntidade);
begin
  FComandoSQL:= FComando;
  qAux:= TADOQuery.Create(nil);
end;

function TExecutaComandosSQLDAO.ExecutaComandoSQLRetornaADOQuery(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  i: integer;
begin
  try
    with Query, sql do
    begin
      close;
      Clear;
      Add(FComandoSQL.ComandoSQL);
      if (FComandoSQL.Parametros.Count > 0) then
      begin
        for i := 0 to FComandoSQL.Parametros.Count-1 do
        begin
          Parameters.ParamByName(FComandoSQL.Parametros.Items[i]).Value:= FComandoSQL.Valores.Items[i];
        end;
      end;
      open;
      Result := Query.RecordCount;
    end;
  except on E:Exception do
  begin
    Retorno:= E.Message;
    Result:= 0;
  end;
  end;
end;

function TExecutaComandosSQLDAO.ExecutaComandoSQLSalvarAlterarExcluir(var Retorno: AnsiString): Integer;
var
  i: integer;
begin
  try
    with qAux, sql do
    begin
      close;
      Connection:= FComandoSQL.Conexao;
      Clear;
      Add(FComandoSQL.ComandoSQL);
      if (FComandoSQL.Parametros.Count > 0) then
      begin
        for i := 0 to FComandoSQL.Parametros.Count-1 do
        begin
          Parameters.ParamByName(FComandoSQL.Parametros.Items[i]).Value:= FComandoSQL.Valores.Items[i];
        end;
      end;
      Result := ExecSQL;
    end;
  except on E:Exception do
  begin
    Retorno:= E.Message;
    Result:= 0;
  end;
  end;
end;

end.
