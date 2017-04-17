unit UAtualiza_BD;

interface
type
  TAtualiza_BD = class
    procedure Atualizacao;
  end;
implementation

uses
  ADODB, UDM, SysUtils;

{ TAtualiza_BD }

procedure TAtualiza_BD.Atualizacao;
var
  qAux: TADOQuery;
begin
  qAux := TADOQuery.Create(nil);
  try
    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pessoa') + '))');
        add('CREATE TABLE Cadastro_Pessoa ');
        add('(Codigo int primary key, ');
        add('Data_Cadastro datetime, ');
        add('TipoPessoa varchar(20), ');
        add('Nome varchar(100), ');
        add('Endereco varchar(200), ');
        add('Cidade varchar(100), ');
        add('Setor varchar(100)) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin
        
        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pessoa_Documentos') + '))');
        add('CREATE TABLE Cadastro_Pessoa_Documentos ');
        add('(CodigoPessoa int primary key, ');
        add('CNPJ varchar(20), ');
        add('IE varchar(20), ');
        add('CPF varchar(20), ');
        add('RG varchar(20)) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pessoa_Telefone') + '))');
        add('CREATE TABLE Cadastro_Pessoa_Telefone ');
        add('(CodigoTelefone int primary key identity(1,1), ');
        add('CodigoPessoa int, ');
        add('Telefone varchar(20), ');
        add('TipoTelefone varchar(20)) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Veiculo') + '))');
        add('CREATE TABLE Cadastro_Veiculo ');
        add('(Codigo int primary key, ');
        add('Placa varchar(20), ');
        add('Modelo varchar(100), ');
        add('Data_Cadastro datetime) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade') + '))');
        add('CREATE TABLE Registro_Atividade ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Safra int not null, ');
        add('Codigo_Propriedade int, ');
        add('Data_Cadastro datetime) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Colheita') + '))');
        add('CREATE TABLE Registro_Atividade_Colheita ');
        add('(Codigo int primary key identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Data_Cadastro datetime, ');
        add('Data_Inicio_Colheita datetime, ');
        add('Data_Fim_Colheita datetime, ');
        add('Data_Emissao_Romaneio datetime, ');
        add('NRomaneio int, ');
        Add('Codigo_Talhao int,');
        Add('IdMotorista int,');
        Add('IdVeiculo int,');
        Add('IdTransportadora int,');
        Add('IdArmazem int,');
        Add('IdProduto int,');
        Add('IdProdutor int,');
        Add('IdDepositante int,');
        Add('PesoBruto float,');
        Add('Tara float,');
        Add('LiquidoUmido float,');
        Add('Descontos float,');
        Add('LiquidoSeco float,');
        Add('PrecoFrete float,');
        Add('Observacoes varchar(800))');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Atividades') + '))');
        add('CREATE TABLE Registro_Atividade_Atividades ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Atividade int , ');
        add('Codigo_Talhao int, ');
        add('Data_Cadastro datetime, ');
        add('Data_Inicio_Atividade datetime, ');
        add('Data_Fim_Atividade datetime, ');
        add('Codigo_Produto int, ');
        add('Quantidade float, ');
        add('Unidade varchar(3), ');
        add('Custo float, ');
        add('Observacao varchar(800))');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Plantio') + '))');
        add('CREATE TABLE Registro_Atividade_Plantio ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Variedade int, ');
        add('Codigo_Talhao int, ');
        add('Data_Cadastro datetime, ');
        add('Data_Inicio_Plantio datetime, ');
        add('Data_Fim_Plantio datetime, ');
        add('Observacao varchar(800))');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;

    {try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Atividades') + ')and name = ' +
          QuotedStr('Codigo_Talhao') + ')');
        add('begin ');
        add('ALTER TABLE Registro_Atividade_Atividades ADD Codigo_Talhao int');
        add('end ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end; }

    {try
      with qAux, sql do
      begin
        close;
        Connection := dm.ADOConnection1;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Plantio') + ')and name = ' +
          QuotedStr('Codigo_Talhao') + ')');
        add('begin ');
        add('ALTER TABLE Registro_Atividade_Plantio ADD Codigo_Talhao int');
        add('end ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;}
  finally
    FreeAndNil(qAux)
  end;

end;

end.
