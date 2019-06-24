unit uRelatorioProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, DateUtils;

type
  TfRelatorioProdutos = class(TForm)
    DBGrid1: TDBGrid;
    dsRel: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    dtInicio: TDateTimePicker;
    Label1: TLabel;
    dtFim: TDateTimePicker;
    btnFinalizar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Filter;
  public
    { Public declarations }
  end;

var
  fRelatorioProdutos: TfRelatorioProdutos;

implementation

{$R *.dfm}

uses DataModule;

{ TfRelatorioProdutos }

procedure TfRelatorioProdutos.btnFinalizarClick(Sender: TObject);
begin
  Filter;
end;

procedure TfRelatorioProdutos.Filter;
begin
  with DtModule.qrProduto_Relatorio do
  begin
    Close;
    SQL.clear;
    // SQL.Add('SELECT');
    SQL.Add('SELECT P.produto,');
    SQL.Add('	P.preco AS precoAtual,');
    SQL.Add('	SUM ( vp.quantidade ) AS quantidade,');
    SQL.Add('	SUM ( vp.valor ) AS valorQuantidade');
    SQL.Add('FROM');
    SQL.Add('	tb_produto');
    SQL.Add('	P LEFT JOIN tb_venda_produto vp ON P.ID = vp.produto_id');
    SQL.Add('WHERE');
    SQL.Add('	vp.data_create BETWEEN ' + QuotedStr(FormatDateTime('yyyy-MM-dd',
      dtInicio.DateTime)));
    SQL.Add('	AND' + QuotedStr(FormatDateTime('yyyy-MM-dd', dtFim.DateTime)));
    SQL.Add('GROUP BY');
    SQL.Add('P.produto,');
    SQL.Add('P.preco');
    Open();

  end;
end;

procedure TfRelatorioProdutos.FormShow(Sender: TObject);
begin
  dtInicio.DateTime := IncDay(now, -7);
  dtFim.DateTime := now;
  Filter;
end;

end.
