object fCadastroProduto: TfCadastroProduto
  Left = 537
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Cadastro Produto'
  ClientHeight = 213
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 341
    Height = 137
    Align = alClient
    Caption = 'c'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 27
      Height = 13
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Nome'
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 70
      Width = 28
      Height = 13
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Valor:'
    end
    object txNome: TDBEdit
      AlignWithMargins = True
      Left = 6
      Top = 34
      Width = 329
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      CharCase = ecUpperCase
      DataField = 'produto'
      DataSource = dsProduto
      TabOrder = 0
    end
    object txValor: TDBEdit
      AlignWithMargins = True
      Left = 6
      Top = 93
      Width = 329
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      DataField = 'preco'
      DataSource = dsProduto
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 172
    Width = 341
    Height = 41
    Align = alBottom
    Caption = 'c'
    ShowCaption = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 167
      Height = 35
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      Caption = 'SALVAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 96
      ExplicitHeight = 39
    end
    object SpeedButton2: TSpeedButton
      AlignWithMargins = True
      Left = 174
      Top = 3
      Width = 164
      Height = 35
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = 'CANCELAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
      ExplicitLeft = 160
      ExplicitTop = 1
      ExplicitHeight = 39
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 35
    Align = alTop
    ShowCaption = False
    TabOrder = 2
    object Label3: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 8
      Width = 333
      Height = 23
      Margins.Top = 7
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'NOVO PRODUTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 152
      ExplicitTop = 16
      ExplicitWidth = 42
      ExplicitHeight = 16
    end
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = DtModule.qrProduto
    Left = 192
    Top = 8
  end
end