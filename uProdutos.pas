unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uCadastroProduto, DataModule;

type
  TfProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    DBGrid1: TDBGrid;
    dsProdutos: TDataSource;
    btnDel: TSpeedButton;
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDelClick(Sender: TObject);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Filter;
  public
    { Public declarations }
  end;

var
  fProdutos: TfProdutos;

implementation

{$R *.dfm}

procedure TfProdutos.btnDelClick(Sender: TObject);
begin
  DtModule.qrProduto.Delete;
end;

procedure TfProdutos.btnEditClick(Sender: TObject);
begin
  DtModule.qrProduto.Edit;
  fCadastroProduto.ShowModal();
end;

procedure TfProdutos.btnNewClick(Sender: TObject);
begin
  DtModule.qrProduto.Insert;
  fCadastroProduto.ShowModal();
end;

procedure TfProdutos.dsProdutosDataChange(Sender: TObject; Field: TField);
begin
  if DtModule.qrProduto.RecordCount > 0 then
  begin
    btnEdit.Enabled := true;
    btnDel.Enabled := true;
  end
  else
  begin
    btnEdit.Enabled := false;
    btnDel.Enabled := false;
  end;

end;

procedure TfProdutos.Filter;
begin
  with DtModule.qrProduto do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_produto');
    open;
  end;
end;

procedure TfProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DtModule.qrProduto.Close;
end;

procedure TfProdutos.FormShow(Sender: TObject);
begin
  Filter;
end;

end.
