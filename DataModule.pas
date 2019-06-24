unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDtModule = class(TDataModule)
    Driver: TFDPhysPgDriverLink;
    Connection: TFDConnection;
    qrProduto: TFDQuery;
    qrVenda: TFDQuery;
    qrVenda_Controle: TFDQuery;
    qrVendaProduto: TFDQuery;
    qrVendaProduto_CMD: TFDQuery;
    qrVendaView: TFDQuery;
    qrVendaView_CMD: TFDQuery;
    qrProduto_Relatorio: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtModule: TDtModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
