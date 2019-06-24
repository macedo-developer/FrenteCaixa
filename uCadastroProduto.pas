unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Data.DB, DataModule;

type
  TfCadastroProduto = class(TForm)
    Panel1: TPanel;
    txNome: TDBEdit;
    Label1: TLabel;
    txValor: TDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsProduto: TDataSource;
    Panel3: TPanel;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroProduto: TfCadastroProduto;

implementation

{$R *.dfm}

procedure TfCadastroProduto.SpeedButton1Click(Sender: TObject);
begin
  DtModule.qrProduto.FieldByName('datahora_create').AsDateTime := now;
  DtModule.qrProduto.Post;
  DtModule.qrProduto.Refresh;
  ModalResult := mrOk;
end;

procedure TfCadastroProduto.SpeedButton2Click(Sender: TObject);
begin
  DtModule.qrProduto.Cancel;
  ModalResult := mrCancel;
end;

end.
