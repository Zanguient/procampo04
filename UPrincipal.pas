unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, ImgList, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, ActnCtrls, Ribbon, ToolWin, ActnMenus,
  RibbonActnMenus, RibbonSilverStyleActnCtrls, cxLocalization, MetodosBasicos,
  UCadastro_Cidade, UCadastro_Atividade, UCadastro_Grupo_Produto, UCadastro_Marca,
  UCadastro_Variedade_Cultura, UCadastro_Safra, UCadastro_Talhao, UCadastro_Produto,
  URegistro_Atividade, Vcl.Imaging.pngimage, URel_Atividades, UCadastro_Pessoa,
  URomaneio, UCadastro_Veiculo;

type
  TFrmPrincipal = class(TForm)
    StbStatus: TStatusBar;
    ActionManager1: TActionManager;
    acAgenda_Telefonica: TAction;
    acRecibo: TAction;
    acMala_Direta: TAction;
    acGera_Etiqueta_Cliente: TAction;
    acGera_Etiqueta_Produto: TAction;
    acAgenda_Compromisso: TAction;
    acConfiguracao_Sistema: TAction;
    acCadastro_Cidade: TAction;
    acConsulta_Atividades: TAction;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Produtos1: TMenuItem;
    Timer1: TTimer;
    Ribbon1: TRibbon;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonPage4: TRibbonPage;
    RibbonGroup6: TRibbonGroup;
    RibbonPage3: TRibbonPage;
    RibbonGroup5: TRibbonGroup;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    cxLocalizer1: TcxLocalizer;
    acCadastro_Atividade: TAction;
    acCadastro_Grupo_Produto: TAction;
    acCadastro_Marca: TAction;
    acCadastro_Variedade_Cultura: TAction;
    acCadastro_Safra: TAction;
    acCadastro_Talhao: TAction;
    acCadastro_Produto: TAction;
    acRegistro_Atividades: TAction;
    Image1: TImage;
    acCadastro_Pessoa: TAction;
    Ve�culos: TAction;
    actRomaneio: TAction;
    procedure acCadastro_CidadeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acCadastro_AtividadeExecute(Sender: TObject);
    procedure acCadastro_Grupo_ProdutoExecute(Sender: TObject);
    procedure acCadastro_MarcaExecute(Sender: TObject);
    procedure acCadastro_Variedade_CulturaExecute(Sender: TObject);
    procedure acCadastro_SafraExecute(Sender: TObject);
    procedure acCadastro_TalhaoExecute(Sender: TObject);
    procedure acCadastro_ProdutoExecute(Sender: TObject);
    procedure acRegistro_AtividadesExecute(Sender: TObject);
    procedure acConsulta_AtividadesExecute(Sender: TObject);
    procedure acCadastro_PessoaExecute(Sender: TObject);
    procedure Ve�culosExecute(Sender: TObject);
    procedure actRomaneioExecute(Sender: TObject);
  private
    Op: TOperacoes;
    procedure CarregaForm(Pacote, Classe: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UAtualiza_BD;

{$R *.dfm}

procedure TFrmPrincipal.CarregaForm(Pacote, Classe: String);
var
  FormClass: TFormClass;
  Formulario: TFrmPrincipal;
  HandlePack: HModule;
begin
  {HandlePack := LoadPackage(Pacote);
  try
    if HandlePack > 0 then
    begin
      FormClass := TFormClass(GetClass('TFrmCadastro_Cidade'));
      Formulario := TFrmPrincipal(FormClass.Create(self));
      Formulario.Show;
    end;
  finally

  end; }
end;

procedure TFrmPrincipal.acCadastro_AtividadeExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Atividade, FrmCadastro_Atividade);
  FrmCadastro_Atividade.Show;
  Op.CentralizaForm(FrmCadastro_Atividade, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_CidadeExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Cidade, FrmCadastro_Cidade);
  FrmCadastro_Cidade.Show;
  Op.CentralizaForm(FrmCadastro_Cidade, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
  //CarregaForm('PctCidade.bpl', 'TFrmCadastro_Cidade');
  {Application.CreateForm(TFrmCadastro_Cidade, FrmCadastro_Cidade);
  FrmCadastro_Cidade.Show;
  Op.CentralizaForm(FrmCadastro_Cidade, FrmPrincipal, Ribbon1.Height, StbStatus.Height);}
end;

procedure TFrmPrincipal.acCadastro_Grupo_ProdutoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Grupo_Produto, FrmCadastro_Grupo_Produto);
  FrmCadastro_Grupo_Produto.Show;
  Op.CentralizaForm(FrmCadastro_Grupo_Produto, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_MarcaExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Marca, FrmCadastro_Marca);
  FrmCadastro_Marca.Show;
  Op.CentralizaForm(FrmCadastro_Marca, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_PessoaExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Pessoa, FrmCadastro_Pessoa);
  FrmCadastro_Pessoa.Show;
  Op.CentralizaForm(FrmCadastro_Pessoa, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_ProdutoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Produto, FrmCadastro_Produto);
  FrmCadastro_Produto.Show;
  Op.CentralizaForm(FrmCadastro_Produto, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_SafraExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Safra, FrmCadastro_Safra);
  FrmCadastro_Safra.Show;
  Op.CentralizaForm(FrmCadastro_Safra, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_TalhaoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Talhao, FrmCadastro_Talhao);
  FrmCadastro_Talhao.Show;
  Op.CentralizaForm(FrmCadastro_Talhao, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acCadastro_Variedade_CulturaExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Variedade_Cultura, FrmCadastro_Variedade_Cultura);
  FrmCadastro_Variedade_Cultura.Show;
  Op.CentralizaForm(FrmCadastro_Variedade_Cultura, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acConsulta_AtividadesExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmRel_Atividades, FrmRel_Atividades);
  FrmRel_Atividades.Show;
  Op.CentralizaForm(FrmRel_Atividades, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.acRegistro_AtividadesExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmRegistro_Atividade, FrmRegistro_Atividade);
  FrmRegistro_Atividade.Show;
  Op.CentralizaForm(FrmRegistro_Atividade, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.actRomaneioExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmRomaneio, FrmRomaneio);
  FrmRomaneio.Show;
  Op.CentralizaForm(FrmRomaneio, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'\TraducaoDev.ini') then {Verifica se existe o arquivo dentro da pasta}
  begin
    cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\TraducaoDev.ini');
    cxLocalizer1.LanguageIndex := 1; {Muda o idioma / linguagem}
    cxLocalizer1.Active := TRUE;     {Ativa o componente / a tradu��o}
  end;

end;

procedure TFrmPrincipal.Ve�culosExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastro_Veiculo, FrmCadastro_Veiculo);
  FrmCadastro_Veiculo.Show;
  Op.CentralizaForm(FrmCadastro_Veiculo, FrmPrincipal, Ribbon1.Height, StbStatus.Height);
end;

end.