object fVendas: TfVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 488
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 264
    Top = 0
    Width = 655
    Height = 488
    Align = alClient
    ShowCaption = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 444
      Width = 653
      Height = 43
      Align = alBottom
      Color = 8289918
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object lbTotal: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 631
        Height = 14
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Total: R$ 0,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 562
        ExplicitWidth = 80
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 653
      Height = 443
      Align = alClient
      DataSource = dsVendas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'N'#186
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_create'
          Title.Caption = 'Data'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cliente'
          Title.Caption = 'Cliente'
          Width = 414
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Caption = 'Total'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 488
    Align = alLeft
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 122
      Width = 242
      Height = 13
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Data Fim'
      ExplicitTop = 67
      ExplicitWidth = 42
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 66
      Width = 242
      Height = 13
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Data Inicio'
      ExplicitTop = 11
      ExplicitWidth = 51
    end
    object Cliente: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 242
      Height = 13
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Cliente'
      ExplicitWidth = 33
    end
    object dtFim: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 146
      Width = 242
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alTop
      Date = 43586.969019305560000000
      Time = 43586.969019305560000000
      TabOrder = 0
      ExplicitTop = 91
    end
    object dtInicio: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 90
      Width = 242
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 1
      Align = alTop
      Date = 43586.969019305560000000
      Time = 43586.969019305560000000
      TabOrder = 1
      ExplicitTop = 35
    end
    object btnFinalizar: TButton
      AlignWithMargins = True
      Left = 4
      Top = 178
      Width = 256
      Height = 37
      Margins.Top = 10
      Align = alTop
      Caption = 'FILTRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnFinalizarClick
      ExplicitTop = 123
    end
    object txCliente: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 30
      Width = 242
      Height = 21
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = DtModule.qrVendaView
    Left = 480
    Top = 264
  end
end
