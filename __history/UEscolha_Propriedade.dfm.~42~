object FrmEscolha_Propriedade: TFrmEscolha_Propriedade
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Escolha a propriedade'
  ClientHeight = 226
  ClientWidth = 708
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 708
    Height = 226
  end
  object cxButton1: TcxButton
    Left = 242
    Top = 199
    Width = 87
    Height = 25
    Caption = 'Ok'
    OptionsImage.Images = DM.ImgComandos
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 376
    Top = 199
    Width = 87
    Height = 25
    Caption = 'Fechar'
    OptionsImage.Images = DM.ImgComandos
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxGrid1: TcxGrid
    Left = 2
    Top = 2
    Width = 704
    Height = 191
    TabOrder = 2
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataSource = dsPropriedade
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsView.ScrollBars = ssNone
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 
            'Selecione uma fazenda. Todos os movimentos lan'#231'ados ser'#227'o direci' +
            'onados para a fazenda selecionada.'
          Styles.Header = cxStyle1
        end>
      object cxGrid1DBBandedTableView1Nome: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nome'
        Options.Editing = False
        Width = 293
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Endereco: TcxGridDBBandedColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'Endereco'
        Options.Editing = False
        Width = 221
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Cidade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cidade'
        Options.Editing = False
        Width = 157
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object qryPropriedade: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CP.*, CPT.Tipo_Pessoa from Cadastro_Pessoa CP'
      
        'left join Cadastro_Pessoa_Tipo CPT on (CP.Codigo = CPT.Codigo_Pe' +
        'ssoa)'
      'where CPT.Tipo_Pessoa = '#39'FAZENDA'#39)
    Left = 536
    Top = 8
    object qryPropriedadeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryPropriedadeData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryPropriedadeNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryPropriedadeEndereco: TStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object qryPropriedadeCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object qryPropriedadeSetor: TStringField
      FieldName = 'Setor'
      Size = 100
    end
    object qryPropriedadeTipo_Pessoa: TStringField
      FieldName = 'Tipo_Pessoa'
    end
  end
  object dsPropriedade: TDataSource
    DataSet = qryPropriedade
    Left = 568
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 520
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxLocalizer1: TcxLocalizer
    Left = 88
    Top = 288
  end
end
