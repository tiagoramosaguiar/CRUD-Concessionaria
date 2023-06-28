unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, frxClass, frxDBSet, frCoreClasses;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    TableClientes: TFDTable;
    TableClientesnome_cliente: TStringField;
    TableClientescpf_cliente: TStringField;
    TableClientestelefone_cliente: TStringField;
    TableClientesendereco_cliente: TStringField;
    TableClientesemail_cliente: TStringField;
    TableClientesdatanasc_cliente: TDateField;
    DSClientes: TDataSource;
    TableFuncionarios: TFDTable;
    TableFuncionariosid_funcionario: TIntegerField;
    TableFuncionariosnome_funcionario: TStringField;
    TableFuncionarioscpf_funcionario: TStringField;
    TableFuncionarioscargo_funcionario: TStringField;
    TableFuncionariostelefone_funcionario: TStringField;
    TableFuncionariossalario_funcionario: TFloatField;
    DSFuncionarios: TDataSource;
    TableVeiculos: TFDTable;
    DSVeiculos: TDataSource;
    TableVendas: TFDTable;
    TableVendascod_veiculo: TIntegerField;
    TableVendascod_cliente: TIntegerField;
    TableVendascod_funcionario: TIntegerField;
    TableVendasdata_venda: TDateField;
    TableVendasvalor_venda: TFloatField;
    DSVendas: TDataSource;
    Wait: TFDGUIxWaitCursor;
    QueryCredenciais: TFDQuery;
    TableFuncionariossenha_funcionario: TStringField;
    Q_con_clientes: TFDQuery;
    Q_pesqFunc_vendas: TFDQuery;
    Q_con_veiculos: TFDQuery;
    Q_con_vendas: TFDQuery;
    Q_con_clientesid_cliente: TFDAutoIncField;
    Q_con_clientesnome_cliente: TStringField;
    Q_con_clientescpf_cliente: TStringField;
    Q_con_clientestelefone_cliente: TStringField;
    Q_con_clientesendereco_cliente: TStringField;
    Q_con_clientesemail_cliente: TStringField;
    Q_con_clientesdatanasc_cliente: TDateField;
    ds_con_clientes: TDataSource;
    Ds_pesqFunc_vendas: TDataSource;
    ds_con_veiculos: TDataSource;
    DS_con_Vendas: TDataSource;
    TableClientesid_cliente: TFDAutoIncField;
    Q_con_veiculosid_veiculo: TFDAutoIncField;
    Q_con_veiculosmarca_veiculo: TStringField;
    Q_con_veiculosmodelo_veiculo: TStringField;
    Q_con_veiculosano_veiculo: TStringField;
    Q_con_veiculoscor_veiculo: TStringField;
    Q_con_veiculospreco_veiculo: TFloatField;
    Q_con_veiculosdisponivel_veiculo: TBooleanField;
    TableVeiculosid_veiculo: TFDAutoIncField;
    TableVeiculosmarca_veiculo: TStringField;
    TableVeiculosmodelo_veiculo: TStringField;
    TableVeiculosano_veiculo: TStringField;
    TableVeiculoscor_veiculo: TStringField;
    TableVeiculospreco_veiculo: TFloatField;
    TableVeiculosdisponivel_veiculo: TBooleanField;
    Q_pesqCliente_vendas: TFDQuery;
    ds_pesqClientes_Vendas: TDataSource;
    Q_pesqVeiculo_Vendas: TFDQuery;
    ds_pesqveiculos_vendas: TDataSource;
    Q_pesqCliente_vendasid_cliente: TFDAutoIncField;
    Q_pesqCliente_vendasnome_cliente: TStringField;
    Q_pesqCliente_vendascpf_cliente: TStringField;
    Q_pesqCliente_vendastelefone_cliente: TStringField;
    Q_pesqCliente_vendasendereco_cliente: TStringField;
    Q_pesqCliente_vendasemail_cliente: TStringField;
    Q_pesqCliente_vendasdatanasc_cliente: TDateField;
    Q_pesqVeiculo_Vendasid_veiculo: TFDAutoIncField;
    Q_pesqVeiculo_Vendasmarca_veiculo: TStringField;
    Q_pesqVeiculo_Vendasmodelo_veiculo: TStringField;
    Q_pesqVeiculo_Vendascor_veiculo: TStringField;
    Q_pesqVeiculo_Vendaspreco_veiculo: TFloatField;
    Q_pesqVeiculo_Vendasdisponivel_veiculo: TBooleanField;
    Q_pesqVeiculo_Vendasano_veiculo: TStringField;
    Q_pesqFunc_vendasid_funcionario: TFDAutoIncField;
    Q_pesqFunc_vendasnome_funcionario: TStringField;
    Q_pesqFunc_vendascpf_funcionario: TStringField;
    Q_pesqFunc_vendascargo_funcionario: TStringField;
    Q_pesqFunc_vendastelefone_funcionario: TStringField;
    Q_pesqFunc_vendassalario_funcionario: TFloatField;
    Q_pesqFunc_vendassenha_funcionario: TStringField;
    Q_con_vendasid_vendas: TFDAutoIncField;
    Q_con_vendascod_cliente: TIntegerField;
    Q_con_vendasnome_cliente: TStringField;
    Q_con_vendascod_veiculo: TIntegerField;
    Q_con_vendasmarca_veiculo: TStringField;
    Q_con_vendasmodelo_veiculo: TStringField;
    Q_con_vendascor_veiculo: TStringField;
    Q_con_vendasano_veiculo: TStringField;
    Q_con_vendascod_funcionario: TIntegerField;
    Q_con_vendasnome_funcionario: TStringField;
    Q_con_vendasdata_venda: TDateField;
    Q_con_vendasvalor_venda: TFloatField;
    TableVendasid_vendas: TFDAutoIncField;
    Report: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Q_relatorio: TFDQuery;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    function ChecarCredenciais(const usuario, senha: string): Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  conexao.Params.Database := 'concessionaria';
  conexao.Params.UserName := 'root';
  conexao.Params.Password := '';

  conexao.Connected := true;
  Driver.VendorLib := getCurrentDir + '\lib\libmysql.dll';

  tableclientes.TableName := 'clientes';
  tableveiculos.TableName := 'veiculos';
  tablevendas.TableName := 'vendas';
  tableclientes.Active := true;
  tableveiculos.Active := true;
  tablevendas.Active := true;
  Q_con_clientes.Active := true;
  Q_con_veiculos.Active := true;
  Q_con_vendas.Active := true;
  Q_Pesqveiculo_vendas.Active := true;

end;

function TDM.ChecarCredenciais(const usuario, senha: string): Boolean;
begin
  QueryCredenciais.SQL.Text := 'SELECT COUNT(*) FROM funcionarios WHERE nome_funcionario = :usuario AND senha_funcionario = :senha';
  QueryCredenciais.ParamByName('usuario').AsString := usuario;
  QueryCredenciais.ParamByName('senha').AsString := senha;
  QueryCredenciais.Open;
  Result := QueryCredenciais.Fields[0].AsInteger > 0;
  QueryCredenciais.Close;
end;

end.
