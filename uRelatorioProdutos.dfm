object fRelatorioProdutos: TfRelatorioProdutos
  Left = 0
  Top = 0
  Caption = 'fRelatorioProdutos'
  ClientHeight = 324
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 588
    Height = 291
    Align = alClient
    DataSource = dsRel
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'produto'
        Title.Caption = 'Produto'
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precoAtual'
        Title.Caption = 'Pre'#231'o Atual'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorQuantidade'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 33
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 51
      Height = 20
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Data Inicio'
      ExplicitHeight = 13
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 208
      Top = 11
      Width = 42
      Height = 20
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Data Fim'
      ExplicitHeight = 13
    end
    object dtInicio: TDateTimePicker
      AlignWithMargins = True
      Left = 77
      Top = 6
      Width = 116
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Date = 43586.969019305560000000
      Time = 43586.969019305560000000
      TabOrder = 0
    end
    object dtFim: TDateTimePicker
      AlignWithMargins = True
      Left = 265
      Top = 6
      Width = 116
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Date = 43586.969019305560000000
      Time = 43586.969019305560000000
      TabOrder = 1
    end
    object btnFinalizar: TButton
      AlignWithMargins = True
      Left = 389
      Top = 6
      Width = 97
      Height = 23
      Margins.Top = 5
      Align = alLeft
      Caption = 'FILTRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnFinalizarClick
    end
  end
  object dsRel: TDataSource
    AutoEdit = False
    DataSet = DtModule.qrProduto_Relatorio
    Left = 168
    Top = 88
  end
end
