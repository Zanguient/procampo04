unit UAtualiza_BD;

interface
type
  TAtualiza_BD = class
    procedure Atualizacao;
  end;
implementation

uses
  ADODB, UDM, SysUtils, OperacoesConexao;

{ TAtualiza_BD }

procedure TAtualiza_BD.Atualizacao;
var
  qAux: TADOQuery;
  Conexao: TADOConnection;
begin
  qAux := TADOQuery.Create(nil);
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qAux], Conexao);
  try
    try
      with qAux, sql do
      begin
        close;
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pessoa') + '))');
        add('CREATE TABLE Cadastro_Pessoa ');
        add('(Codigo int primary key, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Data_Cadastro datetime, ');
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
        Connection := Conexao;
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
        Connection := Conexao;
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pessoa_Tipo') + '))');
        add('CREATE TABLE Cadastro_Pessoa_Tipo ');
        add('(Codigo int primary key identity(1,1), ');
        add('Codigo_Pessoa int, ');
        add('Tipo_Pessoa varchar(20)) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Talhao') + '))');
        add('CREATE TABLE Cadastro_Talhao ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Numero_Talhao varchar(20), ');
        add('Descricao_Talhao varchar(50), ');
        add('Area float, ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Safra') + '))');
        add('CREATE TABLE Cadastro_Safra ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Marca') + '))');
        add('CREATE TABLE Cadastro_Marca ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Variedade_Cultura') + '))');
        add('CREATE TABLE Cadastro_Variedade_Cultura ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Grupo_Produtos') + '))');
        add('CREATE TABLE Cadastro_Grupo_Produtos ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Produtos') + '))');
        add('CREATE TABLE Cadastro_Produtos ');
        add('(Codigo int primary key, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Codigo_Produto varchar(50), ');
        add('Descricao varchar(50), ');
        add('Preco_Compra float, ');
        add('Unidade_Compra varchar(3), ');
        add('Unidade_Estoque varchar(3), ');
        add('Volume float, ');
        add('Data_Cadastro datetime, ');
        add('Data_Ultima_Compra datetime, ');
        add('Data_Validade datetime, ');
        add('Observacao varchar(800), ');
        add('Aplicacao varchar(800), ');
        add('Controla_Estoque bit, ');
        add('Ativo bit, ');
        add('Carencia int, ');
        add('Codigo_Grupo int, ');
        add('Codigo_Marca int) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Produtos_Aplicacao') + '))');
        add('CREATE TABLE Cadastro_Produtos_Aplicacao ');
        add('(Codigo int primary key identity(1,1), ');
        add('Codigo_Produto int, ');
        add('Aplicacao varchar(50)) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Veiculo') + '))');
        add('CREATE TABLE Cadastro_Veiculo ');
        add('(Codigo int primary key, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Placa varchar(20), ');
        add('Modelo varchar(100), ');
        add('Descricao_Detalhada varchar(200), ');
        add('Data_Entrada datetime, ');
        add('Km_Entrada float, ');
        add('Data_Saida datetime, ');
        add('Km_Saida float, ');
        add('Preco float, ');
        add('Observacao varchar(800), ');
        add('Status varchar(20), ');
        add('Categoria varchar(20), ');
        add('Tipo varchar(20), ');
        add('Unidade_Trabalho varchar(20), ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade') + '))');
        add('CREATE TABLE Registro_Atividade ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Safra int not null, ');
        add('Inicio_Safra datetime, ');
        add('Fim_Safra datetime, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
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
        Connection := Conexao;
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Atividades_Talhao') + '))');
        add('CREATE TABLE Registro_Atividade_Atividades_Talhao ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Registro_Atividade_Atividade int , ');
        add('Codigo_Talhao int,');
        add('Area float)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Atividades') + '))');
        add('CREATE TABLE Registro_Atividade_Atividades ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Atividade int , ');
        Add('Tipo_Atividade varchar(20),');
        add('Data_Cadastro datetime, ');
        add('Data_Inicio_Atividade datetime, ');
        add('Data_Fim_Atividade datetime, ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Atividades_Produto') + '))');
        add('CREATE TABLE Registro_Atividade_Atividades_Produto ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Registro_Atividade_Atividade int not null, ');
        add('Codigo_Produto int, ');
        add('Quantidade float, ');
        add('Unidade varchar(3), ');
        add('Custo float)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Trabalho_Maquina') + '))');
        add('CREATE TABLE Registro_Atividade_Trabalho_Maquina ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        //add('Codigo_Registro_Atividade_Atividade int not null, ');
        add('Codigo_Maquina int, ');
        add('UT_Inicial float, ');
        add('UT_Final float, ');
        add('Preco_UT float,');
        Add('Preco_Total float,');
        Add('Data_Cadastro datetime,');
        Add('Data_Trabalho_Inicial datetime,');
        Add('Data_Trabalho_Final datetime,');
        Add('Tipo_Atividade varchar(20),');
        Add('Observacao varchar(800))');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Plantio') + '))');
        add('CREATE TABLE Registro_Atividade_Plantio ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Variedade int, ');
        add('Codigo_Talhao int, ');
        add('Data_Plantio datetime, ');
        add('Data_Cadastro datetime, ');
        add('Data_Inicio_Plantio datetime, ');
        add('Data_Fim_Plantio datetime, ');
        Add('Area_Plantada float,');
        Add('Stand_Plantio int,');
        Add('Stand_Inicial int,');
        Add('Data_Stand_Inicial datetime,');
        Add('Stand_Final int,');
        Add('Data_Stand_Final datetime,');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Plantio_Ocorrencia') + '))');
        add('CREATE TABLE Registro_Atividade_Plantio_Ocorrencia ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Plantio int, ');
        add('Codigo_Ocorrencia int, ');
        add('Intensidade varchar(20), ');
        add('Area_Analisada float, ');
        add('Estadio varchar(20), ');
        Add('Data_Ocorrencia datetime,');
        add('Dias_Plantio int,');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Registro_Atividade_Plantio_Estadio') + '))');
        add('CREATE TABLE Registro_Atividade_Plantio_Estadio ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Registro_Atividade int not null, ');
        add('Codigo_Plantio int, ');
        add('Codigo_Ocorrencia int, ');
        add('Intensidade varchar(20), ');
        add('Area_Afetada float, ');
        Add('Data_Ocorrencia datetime,');
        add('Dias_Plantio int,');
        add('Observacao varchar(800))');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;}

    try
      with qAux, sql do
      begin
        close;
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Contrato') + '))');
        add('CREATE TABLE Contrato ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('N_Contrato varchar(20) not null, ');
        add('Codigo_Safra int, ');
        add('Codigo_Codigo_Produto int, ');
        add('Data_Cadastro datetime, ');
        add('Data_Assinatura datetime, ');
        add('Data_Vencimento datetime, ');
        add('Codigo_Contratante int, ');
        add('Quantidade_Saca float, ');
        add('Area float, ');
        add('Preco float, ');
        add('Vigencia int, ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Contrato_Pagamento') + '))');
        add('CREATE TABLE Contrato_Pagamento ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Contrato int not null, ');
        add('Data_Vencimento datetime, ');
        add('Data_Pagamento datetime, ');
        add('Preco_Saca float, ');
        add('Valor_Total float, ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Estoque_Grao') + '))');
        add('CREATE TABLE Estoque_Grao ');
        add('(Codigo int not null identity(1,1), ');
        add('Codigo_Safra int not null, ');
        add('Codigo_Armazem int not null, ');
        add('Codigo_Produto int not null, ');
        add('Codigo_Fazenda int not null, ');
        add('Estoque float not null, ');
        Add('constraint pk_estoque primary key (Codigo_Safra, Codigo_Armazem, Codigo_Produto, Codigo_Fazenda) )');
        {Add('constraint fk_safra_estoque foreign key (Codigo_Safra) references Cadastro_Safra (Codigo),') ;
        Add('constraint fk_armazem_estoque foreign key (Codigo_Armazem) references Cadastro_Pessoa (Codigo),') ;
        Add('constraint fk_produto_estoque foreign key (Codigo_Produto) references Cadastro_Produtos (Codigo),') ;
        Add('constraint fk_fazenda_estoque foreign key (Codigo_Fazenda) references Cadastro_Propriedade (Codigo))') ;}
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Contrato_Venda') + '))');
        add('CREATE TABLE Contrato_Venda ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Usuario int, ');
        add('Data_Cadastro datetime, ');
        add('Data_Venda datetime, ');
        add('N_Nota_Fiscal int, ');
        add('Codigo_Safra int not null, ');
        add('Codigo_Armazem int not null, ');
        add('Codigo_Produto int not null, ');
        add('Codigo_Fazenda int not null, ');
        add('Codigo_Cliente int not null, ');
        add('Codigo_Contrato int, ');
        add('Codigo_Forma_Pagamento int, ');
        add('Codigo_Plano_Financeiro int, ');
        add('Codigo_Tipo_Documento int, ');
        add('Codigo_Departamento int, ');
        add('Quantidade_Kg float, ');
        add('Quantidade_Saca float, ');
        add('Preco_Saca float,');
        add('Valor_Total float,');
        add('Codigo_Lancamento_Financeiro int, ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Manutencao_Maquina') + '))');
        add('CREATE TABLE Manutencao_Maquina ');
        add('(Codigo int primary key not null, ');
        add('N_Documento varchar(20), ');
        add('Data_Servico datetime, ');
        add('Data_Cadastro datetime,');
        Add('Codigo_Maquina int,');
        Add('UT_Maquina float,');
        Add('Valor_Total float,');
        Add('Codigo_Safra int,');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        Add('Observacoes varchar(1000))');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Manutencao_Maquina_Servico') + '))');
        add('CREATE TABLE Manutencao_Maquina_Servico ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Manutencao int, ');
        add('Codigo_Servico int, ');
        add('Valor_Servico float,');
        Add('Tempo_Garantia float,');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Manutencao_Maquina_Servico_Proxima_Revisao') + '))');
        add('CREATE TABLE Manutencao_Maquina_Servico_Proxima_Revisao ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Servico_Manutencao int, ');
        add('Unidade_Trabalho varchar(20),');
        Add('Proxima_Revisao float)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Manutencao_Maquina_Produto') + '))');
        add('CREATE TABLE Manutencao_Maquina_Produto ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Manutencao int, ');
        add('Codigo_Produto int, ');
        add('Valor_Produto float,');
        add('Quantidade float,');
        Add('Valor_Total float,');
        Add('Tempo_Garantia float,');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Servico') + '))');
        add('CREATE TABLE Cadastro_Servico ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(100), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Ocorrencia') + '))');
        add('CREATE TABLE Cadastro_Ocorrencia ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(100), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Condicao_Pagamento') + '))');
        add('CREATE TABLE Condicao_Pagamento ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Status varchar(7), ');
        add('Descricao varchar(50), ');
        add('Parcela int, ');
        add('Prazo int, ');
        add('Taxa float, ');
        add('Tipo_Pagamento varchar(20), ');
        add('Tipo_Juro varchar(20), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Tipo_Documento') + '))');
        add('CREATE TABLE Cadastro_Tipo_Documento ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Departamento') + '))');
        add('CREATE TABLE Cadastro_Departamento ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Plano_Financeiro') + '))');
        add('CREATE TABLE Cadastro_Plano_Financeiro ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Tipo varchar(7), ');
        add('Descricao varchar(500), ');
        add('Codigo_SubNivel int, ');
        add('Data_Cadastro datetime,');
        add('Sub_Nivel varchar(500), ');
        add('Codigo_Pai int)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Lancamento_Financeiro') + '))');
        add('CREATE TABLE Lancamento_Financeiro ');
        add('(Codigo int primary key not null, ');
        add('Tipo varchar(7), ');
        add('N_Documento int, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Codigo_Forma_Pagamento int, ');
        add('Codigo_Pessoa int,');
        add('Codigo_Tipo_Documento int, ');
        add('Historico varchar(100), ');
        add('Codigo_Departamento int, ');
        add('Codigo_Plano int, ');
        add('Codigo_Safra int, ');
        add('Data_Lancamento datetime, ');
        add('Data_Vencimento datetime, ');
        add('Valor_Documento float, ');
        add('Desconto float, ');
        add('Multa float, ');
        add('Valor_Cobrado float, ');
        add('Observacoes varchar(800), ');
        add('Fiscal varchar(3)) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Lancamento_Financeiro_Codigo_Movimentacao') + '))');
        add('CREATE TABLE Lancamento_Financeiro_Codigo_Movimentacao ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Lancamento_Financeiro int not null, ');
        add('Codigo_Entrada_Produto int, ');
        add('Codigo_Venda int, ');
        add('Codigo_Folha_Pagamento int, ');
        add('Codigo_Manutencao_Maquina int) ');
        ExecSQL;
      end;
    except
      on E: Exception do
      begin

        abort;
      end;
    end;}

    try
      with qAux, sql do
      begin
        close;
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Lancamento_Financeiro_Parcelas') + '))');
        add('CREATE TABLE Lancamento_Financeiro_Parcelas ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Lancamento_Financeiro int not null, ');
        add('N_Documento int, ');
        add('Data_Vencimento datetime, ');
        add('Data_Pagamento datetime, ');
        add('Parcela int, ');
        add('Status varchar(8), ');
        add('Valor float, ');
        add('Cheque varchar(30), ');
        add('Conta varchar(30), ');
        add('Codigo_Lancamento_Bancario int, ');
        add('Observacoes varchar(800))');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Conta_Bancaria') + '))');
        add('CREATE TABLE Cadastro_Conta_Bancaria ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Conta_Corrente varchar(20), ');
        add('Agencia varchar(20), ');
        add('Nome_Correntista varchar(50), ');
        add('Saldo_Inicial float, ');
        add('Limite float, ');
        add('Saldo_Atual float,');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Operacao_Bancaria') + '))');
        add('CREATE TABLE Cadastro_Operacao_Bancaria ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Operacao varchar(50), ');
        add('Tipo varchar(7), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Cheque') + '))');
        add('CREATE TABLE Cadastro_Cheque ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Emitente varchar(50), ');
        add('Recebido_De varchar(50), ');
        add('Enviado_A varchar(50), ');
        add('Agencia varchar(20), ');
        add('Codigo_Conta int, ');
        add('Tipo_Cheque varchar(30), ');
        add('Situacao_Cheque varchar(30), ');
        add('Numero_Cheque varchar(20), ');
        add('Valor float, ');
        add('Juro float, ');
        add('Valor_Final float, ');
        add('Data_Entrada datetime, ');
        add('Data_Vencimento datetime, ');
        add('Data_Saida datetime, ');
        add('Observacoes varchar(800), ');
        add('Status varchar(20), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Lancamento_Banco') + '))');
        add('CREATE TABLE Lancamento_Banco ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('N_Documento int, ');
        add('Data_Lancamento datetime, ');
        add('Codigo_Conta int, ');
        add('Codigo_Cheque int, ');
        add('Codigo_Operacao int, ');
        add('Codigo_Plano int, ');
        add('Descricao varchar(50), ');
        add('Valor float, ');
        add('Status varchar(30), ');
        add('Saldo_Anterior float, ');
        add('Saldo_Atual float, ');
        add('Codigo_Conta_Transferencia int, ');
        add('Saldo_Anterior_Transferencia float, ');
        add('Saldo_Atual_Transferencia float) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Atividade') + '))');
        add('CREATE TABLE Cadastro_Atividade ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Cidade') + '))');
        add('CREATE TABLE Cadastro_Cidade ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Cidade varchar(50), ');
        add('UF varchar(2), ');
        add('DDD varchar(2), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Historico_Usuario') + '))');
        add('CREATE TABLE Historico_Usuario ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Formulario varchar(100), ');
        add('Historico varchar(300), ');
        add('Data datetime, ');
        add('Hora varchar(10), ');
        add('Tipo_Operacao varchar(20))');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Historico_Movimentacao_Financeira') + '))');
        add('CREATE TABLE Historico_Movimentacao_Financeira ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Conta int, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Forma_Pagamento varchar(50), ');
        add('Historico varchar(300), ');
        add('Tipo_Documento varchar(50), ');
        add('Tipo_Operacao varchar(10), ');
        add('Data datetime, ');
        add('Valor float)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Entrada_Produto') + '))');
        add('CREATE TABLE Entrada_Produto ');
        add('(Codigo int primary key not null, ');
        add('Data_Cadastro datetime, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('N_Nota_Fiscal varchar(20), ');
        add('Data_Emissao datetime, ');
        add('Codigo_Fornecedor int, ');
        add('Codigo_Comprador int, ');
        add('Codigo_Forma_Pagamento int, ');
        add('Codigo_Plano_Financeiro int, ');
        add('Codigo_Safra int, ');
        add('Codigo_Tipo_Documento int, ');
        add('Codigo_Departamento int, ');
        add('Valor_Produtos float, ');
        add('Valor_Frete float, ');
        add('Valor_Seguro float, ');
        add('Valor_Outras_Despesas float, ');
        add('Valor_Desconto float, ');
        add('Valor_Total_NF float, ');
        add('Codigo_Lancamento_Financeiro int, ');
        add('Observacoes varchar(800)) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Entrada_Produto_Produtos') + '))');
        add('CREATE TABLE Entrada_Produto_Produtos ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Entrada int, ');
        add('Codigo_Produto int, ');
        add('Valor_Compra float, ');
        add('Unidade varchar(3), ');
        add('Quantidade float, ');
        add('Valor_Total float, ');
        add('Observacoes varchar(800)) ');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Estoque_Produto') + '))');
        add('CREATE TABLE Estoque_Produto ');
        add('(Codigo int not null identity(1,1), ');
        add('Codigo_Produto int not null, ');
        add('Codigo_Propriedade int not null, ');
        add('Estoque float not null, ');
        Add('constraint pk_estoque_produto primary key (Codigo_Produto, Codigo_Propriedade) )');
        {Add('constraint fk_safra_estoque foreign key (Codigo_Safra) references Cadastro_Safra (Codigo),') ;
        Add('constraint fk_armazem_estoque foreign key (Codigo_Armazem) references Cadastro_Pessoa (Codigo),') ;
        Add('constraint fk_produto_estoque foreign key (Codigo_Produto) references Cadastro_Produtos (Codigo),') ;
        Add('constraint fk_fazenda_estoque foreign key (Codigo_Fazenda) references Cadastro_Propriedade (Codigo))') ;}
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Pluviometro') + '))');
        add('CREATE TABLE Cadastro_Pluviometro ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Item_Folha_Pagamento') + '))');
        add('CREATE TABLE Cadastro_Item_Folha_Pagamento ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Descricao varchar(50), ');
        add('Tipo varchar(20), ');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Dados_Clima') + '))');
        add('CREATE TABLE Dados_Clima ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Codigo_Safra int, ');
        add('Codigo_Pluviometro int, ');
        add('Umidade float, ');
        add('Quantidade_Chuva float, ');
        add('Temperatura_Minima float, ');
        add('Temperatura_Maxima float, ');
        add('Data_Verificacao datetime,');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Folha_Pagamento') + '))');
        add('CREATE TABLE Folha_Pagamento ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Codigo_Safra int, ');
        add('Codigo_Funcionario int, ');
        add('Codigo_Forma_Pagamento int, ');
        add('Codigo_Plano_Financeiro int, ');
        add('Codigo_Departamento int, ');
        add('Codigo_Tipo_Documento int, ');
        add('Data_Lancamento datetime, ');
        add('Mes_Ano varchar(20), ');
        add('Total_Credito float,');
        add('Total_Debito float,');
        add('Salario_Final float,');
        add('Codigo_Lancamento_Financeiro int, ');
        add('Observacao varchar(800) )');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Folha_Pagamento_Itens') + '))');
        add('CREATE TABLE Folha_Pagamento_Itens ');
        add('(Codigo int primary key not null identity(1,1), ');
        add('Codigo_Folha_Pagamento int, ');
        add('Codigo_Item int, ');
        add('Valor float)');
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
        Connection := Conexao;
        clear;
        add('if not exists(select 1 from syscolumns where id = object_id(' +
          QuotedStr('Cadastro_Usuario') + '))');
        add('CREATE TABLE Cadastro_Usuario ');
        add('(Codigo int primary key not null, ');
        add('Codigo_Propriedade int, ');
        add('Codigo_Usuario int, ');
        add('Nome varchar(50),');
        add('Login varchar(20),');
        add('Senha varchar(20),');
        add('Codigo_Perfil int,');
        add('Data_Cadastro datetime)');
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
        Connection := Conexao;
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
        Connection := Conexao;
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
    TOperacoesConexao.ConfirmaConexao(Conexao);
    //FreeAndNil(Conexao);
    FreeAndNil(qAux);
  end;

end;

end.
