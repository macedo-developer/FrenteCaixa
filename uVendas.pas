unit uVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DataModule, Vcl.ComCtrls;

type
  TfVendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbTotal: TLabel;
    DBGrid1: TDBGrid;
    dsVendas: TDataSource;
    dtFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dtInicio: TDateTimePicker;
    btnFinalizar: TButton;
    txCliente: TEdit;
    Cliente: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Filter;
    procedure totalVendas;
  public
    { Public declarations }
  end;

var
  fVendas: TfVendas;

implementation

{$R *.dfm}
{ TfVendas }

procedure TfVendas.btnFinalizarClick(Sender: TObject);
begin
  Filter;
end;

procedure TfVendas.Filter;
begin
  with DtModule.qrVendaView do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('	*');
    SQL.Add('FROM');
    SQL.Add(' 	tb_venda');
    SQL.Add('WHERE');
    SQL.Add('	data_create BETWEEN ' + QuotedStr(FormatDateTime('yyyy-MM-dd',
      dtInicio.Date)));
    SQL.Add('	AND ' + QuotedStr(FormatDateTime('yyyy-MM-dd', dtFim.Date)));

    if txCliente.Text <> '' then
    begin
      SQL.Add('and cliente ilike ' + QuotedStr('%' + txCliente.Text + '%'));
    end;
    open;
    totalVendas;
  end;
end;

procedure TfVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DtModule.qrVendaView.Active then
    DtModule.qrVendaView.close;
end;

procedure TfVendas.FormCreate(Sender: TObject);
begin
  dtInicio.Date := now;
  dtFim.Date := now;
end;

procedure TfVendas.FormShow(Sender: TObject);
begin
  Filter;
end;

procedure TfVendas.totalVendas;
begin
  with DtModule.qrVendaView_CMD do
  begin
    close;
    SQL.Clear;
    SQL.Add('    SELECT ');
    SQL.Add('	SUM( total ) as total');
    SQL.Add('FROM');
    SQL.Add('	tb_venda');
    SQL.Add('WHERE');
    SQL.Add('	data_create BETWEEN ' + QuotedStr(FormatDateTime('yyyy-MM-dd',
      dtInicio.Date)));
    SQL.Add('	AND ' + QuotedStr(FormatDateTime('yyyy-MM-dd', dtFim.Date)));
    open;

    if not IsEmpty then
    begin
      lbTotal.Caption := 'Total: R$ ' +
        CurrToStr(FieldByName('total').AsCurrency);
    end;
    close;
  end;
end;

end.
