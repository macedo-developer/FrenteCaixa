object DtModule: TDtModule
  OldCreateOrder = False
  Height = 421
  Width = 614
  object Driver: TFDPhysPgDriverLink
    Left = 24
    Top = 72
  end
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    Left = 24
    Top = 16
  end
  object qrProduto: TFDQuery
    Connection = Connection
    Left = 24
    Top = 136
  end
  object qrVenda: TFDQuery
    Connection = Connection
    Left = 24
    Top = 200
  end
  object qrVenda_Controle: TFDQuery
    Connection = Connection
    Left = 24
    Top = 264
  end
  object qrVendaProduto: TFDQuery
    Connection = Connection
    Left = 96
    Top = 200
  end
  object qrVendaProduto_CMD: TFDQuery
    Connection = Connection
    Left = 184
    Top = 200
  end
  object qrVendaView: TFDQuery
    Connection = Connection
    Left = 16
    Top = 336
  end
  object qrVendaView_CMD: TFDQuery
    Connection = Connection
    Left = 96
    Top = 336
  end
  object qrProduto_Relatorio: TFDQuery
    Connection = Connection
    Left = 104
    Top = 136
  end
end
