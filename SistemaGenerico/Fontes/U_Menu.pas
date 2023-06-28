unit { UwU } U_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls, Vcl.OleCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Clipbrd, Datasnap.DBClient, FireDAC.Stan.Param,
  FireDAC.Comp.Client, FireDAC.Stan.Error, Vcl.Imaging.pngimage;

type
  TFrm_menu = class(TForm)
    menuPrincipal: TMainMenu;
    ItemClientes: TMenuItem;
    ItemCadastroClientes: TMenuItem;
    ItemBuscaClientes: TMenuItem;
    ItemVeiculos: TMenuItem;
    ItemCadastroVeiculos: TMenuItem;
    ItemBuscaVeiculos: TMenuItem;
    ItemVendas: TMenuItem;
    ItemCadastroVendas: TMenuItem;
    ItemBuscaVendas: TMenuItem;
    StatusBarRodape: TStatusBar;
    TimerRodape: TTimer;
    PCClientes: TPageControl;
    CadastroCliente: TTabSheet;
    buscaCliente: TTabSheet;
    Txt_IDClientes: TDBEdit;
    LabelIDCliente: TLabel;
    Txt_NomeClientes: TDBEdit;
    LabelNomeCliente: TLabel;
    LabelTelefoneCliente: TLabel;
    Txt_telefoneCliente: TDBEdit;
    Txt_CPFClientes: TDBEdit;
    Txt_EmailCliente: TDBEdit;
    LabelEmailCliente: TLabel;
    LabelCPFCliente: TLabel;
    Txt_DataNascClientes: TDBEdit;
    Txt_EnderecoCliente: TDBEdit;
    LabelDataNascCliente: TLabel;
    LabelEnderecoCliente: TLabel;
    ShapeEnderecoCliente: TShape;
    ShapeEmailCliente: TShape;
    ShapeTelefoneCliente: TShape;
    ShapeDataNascCliente: TShape;
    ShapeCPFCliente: TShape;
    ShapeNomeCliente: TShape;
    ShapeIDCliente: TShape;
    PanelInserirCliente: TPanel;
    btn_inserirCliente: TSpeedButton;
    PanelSalvarCliente: TPanel;
    btn_salvarCliente: TSpeedButton;
    PanelFecharCliente: TPanel;
    btn_fecharCliente: TSpeedButton;
    PanelCancelarCliente: TPanel;
    btn_cancelarCliente: TSpeedButton;
    PanelLocalizarCliente: TPanel;
    btn_localizarCliente: TSpeedButton;
    DBGridCliente: TDBGrid;
    Rg_OpcClientes: TRadioGroup;
    ShapeBuscaCliente: TShape;
    Txt_pesqClientes: TEdit;
    PanelBuscarCliente: TPanel;
    btn_buscarCliente: TSpeedButton;
    PanelVoltarCliente: TPanel;
    btn_voltarCliente: TSpeedButton;
    PanelTudoCliente: TPanel;
    btn_tudoCliente: TSpeedButton;
    LabelQuantRegCliente: TLabel;
    Mk_pesqClientes: TMaskEdit;
    LabelPesquisaCliente: TLabel;
    PanelExcluirCliente: TPanel;
    btn_excluirCliente: TSpeedButton;
    PanelEditarCliente: TPanel;
    btn_editarCliente: TSpeedButton;
    PCVeiculos: TPageControl;
    CadastroVeiculos: TTabSheet;
    LabelID: TLabel;
    LabelMarca: TLabel;
    LabelCor: TLabel;
    LabelModelo: TLabel;
    LabelAno: TLabel;
    LabelPreço: TLabel;
    ShapePreco: TShape;
    ShapeModelo: TShape;
    ShapeCor: TShape;
    ShapeAno: TShape;
    ShapeMarca: TShape;
    ShapeID: TShape;
    Txt_IDVeiculos: TDBEdit;
    Txt_MarcaVeiculo: TDBEdit;
    Txt_CorVeiculo: TDBEdit;
    Txt_AnoVeiculo: TDBEdit;
    Txt_PreçoVeiculo: TDBEdit;
    Txt_ModeloVeiculo: TDBEdit;
    PanelInserirVeiculo: TPanel;
    btn_inserirVeiculo: TSpeedButton;
    PanelSalvarVeiculo: TPanel;
    btn_salvarVeiculo: TSpeedButton;
    PanelFecharVeiculo: TPanel;
    btn_fecharVeiculo: TSpeedButton;
    PanelCancelarVeiculo: TPanel;
    btn_cancelarVeiculo: TSpeedButton;
    PanelLocalizarVeiculo: TPanel;
    btn_localizarVeiculo: TSpeedButton;
    BuscaVeiculos: TTabSheet;
    ShapeBuscaVeiculo: TShape;
    LabelQuantRegVeiculo: TLabel;
    LabelPesquisaVeiculo: TLabel;
    DBGridVeiculo: TDBGrid;
    Rg_OpcVeiculos: TRadioGroup;
    Txt_pesqVeiculos: TEdit;
    PanelBuscarVeiculo: TPanel;
    btn_buscarVeiculo: TSpeedButton;
    PanelVoltarVeiculo: TPanel;
    btn_voltarVeiculo: TSpeedButton;
    PanelTudoVeiculo: TPanel;
    btn_tudoVeiculo: TSpeedButton;
    PanelExcluirVeiculo: TPanel;
    btn_excluirVeiculo: TSpeedButton;
    PanelEditarVeiculo: TPanel;
    btn_editarVeiculo: TSpeedButton;
    PanelFecharCliente2: TPanel;
    btn_fecharCliente2: TSpeedButton;
    PanelFecharVeiculo2: TPanel;
    btn_fecharVeiculo2: TSpeedButton;
    PCVendas: TPageControl;
    CadastroVendas: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Txt_idVenda: TDBEdit;
    txt_ClienteVenda: TDBEdit;
    txt_dataVenda: TDBEdit;
    txt_FuncVenda: TDBEdit;
    txt_valorVenda: TDBEdit;
    txt_VeicVenda: TDBEdit;
    Panel1: TPanel;
    Btn_inserirVendas: TSpeedButton;
    Panel2: TPanel;
    Btn_SalvarVenda: TSpeedButton;
    Panel3: TPanel;
    Btn_fecharVenda: TSpeedButton;
    Panel4: TPanel;
    Btn_cancelarVenda: TSpeedButton;
    Panel5: TPanel;
    btn_localizarVenda: TSpeedButton;
    Shape7: TShape;
    Label7: TLabel;
    LabelPesquisaVenda: TLabel;
    DBGridVendas: TDBGrid;
    RG_opcoesVenda: TRadioGroup;
    txt_pesqVendas: TEdit;
    Panel6: TPanel;
    btn_buscarVenda: TSpeedButton;
    Panel7: TPanel;
    Btn_voltarVenda: TSpeedButton;
    Panel8: TPanel;
    btn_TudoVendas: TSpeedButton;
    Panel9: TPanel;
    Btn_excluirVenda: TSpeedButton;
    Panel10: TPanel;
    btn_editarVenda: TSpeedButton;
    Panel11: TPanel;
    Btn_FecharVenda2: TSpeedButton;
    selecCliente: TTabSheet;
    Dg_ClientesVendas: TDBGrid;
    Panel12: TPanel;
    Btn_ProsseguirVenda1: TSpeedButton;
    Shape8: TShape;
    txt_SelecionarCliente: TEdit;
    Panel13: TPanel;
    Btn_cancelarVenda1: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Panel14: TPanel;
    btn_pesquisarCliente: TSpeedButton;
    Mk_pesquisarCliente: TMaskEdit;
    Shape9: TShape;
    selecVeiculo: TTabSheet;
    Shape10: TShape;
    Label11: TLabel;
    Label12: TLabel;
    DG_VeiculosVendas: TDBGrid;
    Panel15: TPanel;
    Btn_ProsseguirVenda2: TSpeedButton;
    txt_selecionarVeiculo: TEdit;
    Panel16: TPanel;
    btn_cancelarVenda2: TSpeedButton;
    Panel17: TPanel;
    btn_pesquisarVeiculo: TSpeedButton;
    Shape11: TShape;
    VeicSelecEscolha: TRadioGroup;
    txt_pesquisarVeiculo: TEdit;
    BuscaVendas: TTabSheet;
    SimNao: TRadioGroup;
    LabelQuantRegvendas: TLabel;
    mk_pesqVenda: TMaskEdit;
    Panel18: TPanel;
    Btn_ImprimirVendas: TSpeedButton;
    ImageLogoMenu: TImage;
    Panel19: TPanel;
    procedure TimerRodapeTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ItemCadastroClientesClick(Sender: TObject);
    procedure ItemBuscaClientesClick(Sender: TObject);
    procedure btn_inserirClienteClick(Sender: TObject);
    procedure btn_editarClienteClick(Sender: TObject);
    procedure btn_salvarClienteClick(Sender: TObject);
    procedure btn_excluirClienteClick(Sender: TObject);
    procedure btn_cancelarClienteClick(Sender: TObject);
    procedure btn_fecharClienteClick(Sender: TObject);
    procedure btn_localizarClienteClick(Sender: TObject);
    procedure btn_tudoClienteClick(Sender: TObject);
    procedure Rg_OpcClientesClick(Sender: TObject);
    procedure btn_voltarClienteClick(Sender: TObject);
    procedure btn_buscarClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridClienteDblClick(Sender: TObject);
    procedure btn_inserirVeiculoClick(Sender: TObject);
    procedure btn_salvarVeiculoClick(Sender: TObject);
    procedure btn_cancelarVeiculoClick(Sender: TObject);
    procedure btn_localizarVeiculoClick(Sender: TObject);
    procedure btn_fecharVeiculoClick(Sender: TObject);
    procedure ItemCadastroVeiculosClick(Sender: TObject);
    procedure btn_tudoVeiculoClick(Sender: TObject);
    procedure btn_voltarVeiculoClick(Sender: TObject);
    procedure DBGridVeiculoDblClick(Sender: TObject);
    procedure ItemBuscaVeiculosClick(Sender: TObject);
    procedure btn_editarVeiculoClick(Sender: TObject);
    procedure ck(Sender: TObject);
    procedure btn_fecharCliente2Click(Sender: TObject);
    procedure btn_fecharVeiculo2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Txt_NomeClientesKeyPress(Sender: TObject; var Key: Char);
    procedure Txt_MarcaVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure Txt_AnoVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure Txt_CorVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure Txt_PreçoVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_buscarVeiculoClick(Sender: TObject);
    procedure btn_pesquisarClienteClick(Sender: TObject);
    procedure ItemCadastroVendasClick(Sender: TObject);
    procedure Btn_cancelarVenda1Click(Sender: TObject);
    procedure Dg_ClientesVendasCellClick(Column: TColumn);
    procedure Btn_inserirVendasClick(Sender: TObject);
    procedure DG_VeiculosVendasCellClick(Column: TColumn);
    procedure btn_pesquisarVeiculoClick(Sender: TObject);
    procedure Btn_ProsseguirVenda1Click(Sender: TObject);
    procedure Btn_ProsseguirVenda2Click(Sender: TObject);
    procedure Btn_SalvarVendaClick(Sender: TObject);
    procedure Btn_cancelarVendaClick(Sender: TObject);
    procedure btn_TudoVendasClick(Sender: TObject);
    procedure btn_buscarVendaClick(Sender: TObject);
    procedure btn_localizarVendaClick(Sender: TObject);
    procedure Btn_fecharVendaClick(Sender: TObject);
    procedure btn_editarVendaClick(Sender: TObject);
    procedure Btn_excluirVendaClick(Sender: TObject);
    procedure Btn_voltarVendaClick(Sender: TObject);
    procedure Rg_OpcVeiculosClick(Sender: TObject);
    procedure ItemBuscaVendasClick(Sender: TObject);
    procedure RG_opcoesVendaClick(Sender: TObject);
    procedure txt_pesqVendasKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirVendasClick(Sender: TObject);
    procedure Btn_FecharVenda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MostrarItensMenu;
    procedure OcultarItensMenu(const nomeMenu: string);
    procedure FecharMenu;
    procedure ConfigBotoesCliente;
    procedure ConfigBotoesVeiculo;
    procedure ConfigBotoesVendas;
    procedure QuantRegCliente;
    procedure QuantRegVeiculo;
    procedure QuantRegVenda;
    procedure ConfigCampos(Tabela: string; CampoID: string);
    procedure ConfigCamposEdicao(const NomeTabSheet: string);
  end;

var
  Frm_menu: TFrm_menu;

implementation

{$R *.dfm}

uses U_login, U_DM, funcoes;

procedure TFrm_menu.ItemCadastroClientesClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Clientes');
  PCClientes.Visible := true;
  PCVeiculos.Visible := false;
  CadastroCliente.TabVisible := true;
  CadastroVeiculos.TabVisible := false;
  buscaCliente.TabVisible := false;
  BuscaVeiculos.TabVisible := false;
  PCClientes.TabIndex := 0;
end;

procedure TFrm_menu.ItemCadastroVeiculosClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Veículos');
  PCClientes.Visible := false;
  PCVeiculos.Visible := true;
  CadastroCliente.TabVisible := false;
  CadastroVeiculos.TabVisible := true;
  buscaCliente.TabVisible := false;
  BuscaVeiculos.TabVisible := false;
  PCVeiculos.TabIndex := 0;
end;

procedure TFrm_menu.ItemBuscaClientesClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Clientes');
  PCClientes.Visible := true;
  PCVeiculos.Visible := false;
  PCVendas.Visible := false;
  CadastroCliente.TabVisible := false;
  CadastroVeiculos.TabVisible := false;
  CadastroVendas.TabVisible := false;
  buscaCliente.TabVisible := true;
  BuscaVeiculos.TabVisible := false;
  BuscaVendas.TabVisible := false;
  PCClientes.TabIndex := 2;
  LabelQuantRegCliente.Caption := '';
  QuantRegCliente;
end;

procedure TFrm_menu.ItemBuscaVeiculosClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Veículos');
  PCClientes.Visible := false;
  PCVendas.Visible := false;
  CadastroVendas.TabVisible := false;
  CadastroCliente.TabVisible := false;
  CadastroVeiculos.TabVisible := false;
  buscaCliente.TabVisible := false;
  BuscaVendas.TabVisible := false;
  BuscaVeiculos.TabVisible := true;
  PCVeiculos.Visible := true;
  PCVeiculos.TabIndex := 2;
  LabelQuantRegVeiculo.Caption := '';
  QuantRegVeiculo;
end;

procedure TFrm_menu.ItemBuscaVendasClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Vendas');
  PCClientes.Visible := false;
  PCVeiculos.Visible := false;
  CadastroVendas.TabVisible := false;
  CadastroCliente.TabVisible := false;
  CadastroVeiculos.TabVisible := false;
  selecVeiculo.TabVisible := false;
  selecCliente.TabVisible := false;
  buscaCliente.TabVisible := false;
  BuscaVendas.TabVisible := true;
  BuscaVeiculos.TabVisible := false;
  PCVendas.Visible := true;
  PCVendas.TabIndex := 2;
  LabelQuantRegvendas.Caption := '';
  QuantRegVenda;
end;

procedure TFrm_menu.ItemCadastroVendasClick(Sender: TObject);
begin
  MostrarItensMenu;
  OcultarItensMenu('Vendas');
  PCClientes.Visible := false;
  PCVeiculos.Visible := false;
  CadastroCliente.TabVisible := false;
  CadastroVeiculos.TabVisible := false;
  CadastroVendas.TabVisible := true;
  selecVeiculo.TabVisible := false;
  selecCliente.TabVisible := false;
  BuscaVendas.TabVisible := false;
  buscaCliente.TabVisible := false;
  BuscaVeiculos.TabVisible := false;
  PCVendas.Visible := true;
  PCVendas.TabIndex := 0;
end;

procedure TFrm_menu.OcultarItensMenu(const nomeMenu: string);
var
  ItemClientes: TMenuItem;
  ItemCadastro: TMenuItem;
  ItemBusca: TMenuItem;
begin
  ItemClientes := menuPrincipal.Items.Find(nomeMenu);
  if Assigned(ItemClientes) then
  begin
    ItemCadastro := ItemClientes.Find('Cadastro');
    ItemBusca := ItemClientes.Find('Busca');

    if Assigned(ItemCadastro) then
      ItemCadastro.Visible := false;

    if Assigned(ItemBusca) then
      ItemBusca.Visible := false;
  end;
end;

procedure TFrm_menu.Rg_OpcClientesClick(Sender: TObject);
begin
  case Rg_OpcClientes.ItemIndex of
    0:
      begin
        Txt_pesqClientes.Clear;
        Txt_pesqClientes.Visible := true;
        Txt_pesqClientes.NumbersOnly := true;
        Mk_pesqClientes.Clear;
        Mk_pesqClientes.Visible := false;
        LabelPesquisaCliente.Caption := 'Código';
      end;
    1:
      begin
        Txt_pesqClientes.Clear;
        Txt_pesqClientes.Visible := true;
        Txt_pesqClientes.NumbersOnly := false;
        Mk_pesqClientes.Clear;
        Mk_pesqClientes.Visible := false;
        LabelPesquisaCliente.Caption := 'Nome';
      end;
    2:
      begin
        Txt_pesqClientes.text := 'a';
        Txt_pesqClientes.Visible := false;
        Txt_pesqClientes.NumbersOnly := false;
        Mk_pesqClientes.Clear;
        Mk_pesqClientes.Visible := true;
        Mk_pesqClientes.EditMask := '999.999.999-99;1;_';
        LabelPesquisaCliente.Caption := 'CPF';
      end;
    3:
      begin
        Txt_pesqClientes.text := 'a';
        Txt_pesqClientes.Visible := false;
        Txt_pesqClientes.NumbersOnly := false;
        Mk_pesqClientes.Clear;
        Mk_pesqClientes.Visible := true;
        Mk_pesqClientes.EditMask := '99/99/9999;1;_';
        LabelPesquisaCliente.Caption := 'Data de nascimento';
      end;
  end;
end;

procedure TFrm_menu.RG_opcoesVendaClick(Sender: TObject);
begin
  case RG_opcoesVenda.ItemIndex of
    0:
      begin
        txt_pesqVendas.Clear;
        txt_pesqVendas.Visible := true;
        txt_pesqVendas.NumbersOnly := true;
        mk_pesqVenda.Visible := false;
        LabelPesquisaVenda.Caption := 'Código';
      end;
    1:
      begin
        txt_pesqVendas.Clear;
        txt_pesqVendas.Visible := true;
        txt_pesqVendas.NumbersOnly := false;
        mk_pesqVenda.Visible := false;
        LabelPesquisaVenda.Caption := 'Cliente';
      end;
    2:
      begin
        txt_pesqVendas.text := 'a';
        txt_pesqVendas.Visible := false;
        txt_pesqVendas.NumbersOnly := false;
        mk_pesqVenda.Visible := true;
        LabelPesquisaVenda.Caption := 'Data';

      end;
  end;
end;

procedure TFrm_menu.Rg_OpcVeiculosClick(Sender: TObject);
begin
  case Rg_OpcVeiculos.ItemIndex of
    0:
      begin
        Txt_pesqVeiculos.Clear;
        Txt_pesqVeiculos.Visible := true;
        Txt_pesqVeiculos.NumbersOnly := true;
        SimNao.Visible := false;
        LabelPesquisaVeiculo.Caption := 'Código';
      end;
    1, 2:
      begin
        Txt_pesqVeiculos.Clear;
        Txt_pesqVeiculos.Visible := true;
        Txt_pesqVeiculos.NumbersOnly := false;
        SimNao.Visible := false;
        LabelPesquisaVeiculo.Caption := 'Marca/Modelo';
      end;
    3:
      begin
        Txt_pesqVeiculos.Clear;
        Txt_pesqVeiculos.text := 'a';
        Txt_pesqVeiculos.Visible := false;
        Txt_pesqVeiculos.NumbersOnly := false;
        SimNao.Visible := true;
        LabelPesquisaVeiculo.Caption := 'Disponibilidade';
      end;
  end;
end;

procedure TFrm_menu.Btn_SalvarVendaClick(Sender: TObject);
var
  i: Integer;
  campoVazio, editando: Boolean;
begin
  campoVazio := false;
  editando := dm.tableVendas.State = dsEdit;

  for i := 0 to CadastroVendas.ControlCount - 1 do
  begin
    if CadastroVendas.Controls[i] is TDBEdit then
    begin
      if TDBEdit(CadastroVendas.Controls[i]).text = '' then
      begin
        campoVazio := true;
        Break;
      end;
    end;
  end;

  if campoVazio then
  begin
    MessageBox(Handle, 'Preencha todos os campos.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end
  else
  begin
    dm.tableVendas.Post;
    ConfigBotoesVendas;
    DBGridVendas.DataSource.DataSet.Close;
    DBGridVendas.DataSource.DataSet.Open;
    ConfigCampos('Vendas', 'id_vendas');

    if editando then
    begin
      MessageBox(0, 'Edição salva com sucesso.', 'Sucesso!', MB_OK);
      btn_localizarVendaClick(Sender);
    end
    else
    begin
      MessageBox(0, 'Salvo com sucesso.', 'Sucesso!', MB_OK);
    end;
  end;
  // dm.Tablevendas.Post;
end;

procedure TFrm_menu.Btn_cancelarVendaClick(Sender: TObject);
begin
  dm.tableVendas.Cancel;
  ConfigBotoesVendas;
end;

procedure TFrm_menu.Btn_inserirVendasClick(Sender: TObject);
begin

  PCVendas.TabIndex := 2;
  ConfigBotoesVendas;
  dm.tableVendas.Insert;
  txt_dataVenda.text := FormatDateTime('dd/mm/yyyy', Now);
  with dm.Q_pesqFunc_vendas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM funcionarios WHERE nome_funcionario = :nome');
    ParamByName('nome').AsString := frm_login.nomeFuncionario;
    Open;
    if not IsEmpty then
      txt_FuncVenda.text := FieldByName('id_funcionario').AsString;
  end;
  selecCliente.TabVisible := true;
  selecVeiculo.TabVisible := false;
  CadastroVendas.TabVisible := false;
  BuscaVendas.TabVisible := false;
  ConfigBotoesVendas;
  dm.Q_pesqCliente_vendas.Close;
  dm.Q_pesqveiculo_vendas.Close;
  dm.Q_pesqCliente_vendas.Open;
  dm.Q_pesqveiculo_vendas.Open;
end;

procedure TFrm_menu.btn_tudoVeiculoClick(Sender: TObject);
begin
  with dm.Q_con_veiculos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from veiculos');
    Open;
  end;
  QuantRegVeiculo;
end;

procedure TFrm_menu.btn_TudoVendasClick(Sender: TObject);
begin
  with dm.Q_con_vendas do
  begin
    SQL.Clear;
    Close;
    SQL.Add('select a.id_vendas, a.cod_cliente, c.nome_cliente, a.cod_veiculo, v.marca_veiculo, v.modelo_veiculo, v.cor_veiculo, v.ano_veiculo, a.cod_funcionario, f.nome_funcionario, a.data_venda, a.valor_venda');
    SQL.Add('from vendas as a join clientes as c on a.cod_cliente = c.id_cliente join veiculos as v on a.cod_veiculo = v.id_veiculo join funcionarios as f on a.cod_funcionario = f.id_funcionario');
    Open;
  end;
  QuantRegVenda
end;

procedure TFrm_menu.btn_tudoClienteClick(Sender: TObject);
begin
  with dm.Q_con_clientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientes');
    Open;
  end;
  QuantRegCliente;
end;

procedure TFrm_menu.btn_excluirClienteClick(Sender: TObject);
var
  idCliente: Integer;
begin
  if DBGridCliente.SelectedRows.CurrentRowSelected then
  begin
    if Application.MessageBox('Deseja excluir o registro selecionado?',
      'Excluir cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      idCliente := DBGridCliente.DataSource.DataSet.FieldByName('id_cliente')
        .AsInteger;
      DBGridCliente.DataSource.DataSet.Delete;
      QuantRegCliente;
      MessageBox(0, 'Registro excluído com sucesso.', 'Sucesso!', MB_OK);
      DBGridCliente.DataSource.DataSet.Close;
      DBGridCliente.DataSource.DataSet.Open;
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para excluir.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesCliente;
end;

procedure TFrm_menu.Btn_excluirVendaClick(Sender: TObject);
var
  idvendas: Integer;
begin
  if DBGridVendas.SelectedRows.CurrentRowSelected then
  begin
    if Application.MessageBox('Deseja excluir o registro selecionado?',
      'Excluir cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      idvendas := DBGridVendas.DataSource.DataSet.FieldByName('id_Vendas')
        .AsInteger;
      DBGridVendas.DataSource.DataSet.Delete;
      QuantRegVenda;
      MessageBox(0, 'Registro excluído com sucesso.', 'Sucesso!', MB_OK);
      DBGridVendas.DataSource.DataSet.Close;
      DBGridVendas.DataSource.DataSet.Open;
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para excluir.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesVendas;
end;

procedure TFrm_menu.Btn_ImprimirVendasClick(Sender: TObject);
var
  idvendas: Integer;
begin
  if DBGridVendas.SelectedRows.CurrentRowSelected then
  begin
    if Application.MessageBox('Deseja imprimir o registro selecionado?',
      'Imprimir relatório', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      idvendas := DBGridVendas.DataSource.DataSet.FieldByName('id_vendas')
        .AsInteger;
      with dm.q_relatorio do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select a.id_vendas, a.cod_cliente, c.nome_cliente, c.cpf_cliente, a.cod_veiculo, v.marca_veiculo, v.modelo_veiculo, v.cor_veiculo, v.ano_veiculo, a.cod_funcionario, f.nome_funcionario, a.data_venda, a.valor_venda ');
        SQL.Add('from vendas as a join clientes as c on a.cod_cliente = c.id_cliente join veiculos as v on a.cod_veiculo = v.id_veiculo join funcionarios as f on a.cod_funcionario = f.id_funcionario where id_vendas = :codigo');
        ParamByName('codigo').Value := idvendas;
        Open;
        dm.Report.ShowReport()
      end;
    end;
  end;
end;

procedure TFrm_menu.ck(Sender: TObject);
var
  idVeiculo: Integer;
begin
  if DBGridVeiculo.SelectedRows.CurrentRowSelected then
  begin
    if Application.MessageBox('Deseja excluir o registro selecionado?',
      'Excluir cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      idVeiculo := DBGridVeiculo.DataSource.DataSet.FieldByName('id_veiculo')
        .AsInteger;
      DBGridVeiculo.DataSource.DataSet.Delete;
      DBGridVeiculo.DataSource.DataSet.Close;
      DBGridVeiculo.DataSource.DataSet.Open;
      QuantRegVeiculo;
      MessageBox(0, 'Registro excluído com sucesso.', 'Sucesso!', MB_OK);
      DBGridVeiculo.DataSource.DataSet.Close;
      DBGridVeiculo.DataSource.DataSet.Open;
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para excluir.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesVeiculo;
end;

procedure TFrm_menu.btn_fecharVeiculo2Click(Sender: TObject);
begin
  btn_fecharVeiculoClick(Sender);
end;

procedure TFrm_menu.btn_fecharVeiculoClick(Sender: TObject);
begin
  if dm.tableVeiculos.State in [dsInsert, dsEdit] then
  begin
    MessageBox(Handle, 'Salve ou cancele antes de sair.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end
  else
  begin
    PCVeiculos.Visible := false;
    MostrarItensMenu;
  end;
end;

procedure TFrm_menu.Btn_FecharVenda2Click(Sender: TObject);
begin
  Btn_FecharVenda2Click(Sender);
end;

procedure TFrm_menu.Btn_fecharVendaClick(Sender: TObject);
begin
  if dm.tableVendas.State in [dsInsert, dsEdit] then
  begin
    MessageBox(Handle, 'Salve ou cancele antes de sair.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end
  else
  begin
    PCVendas.Visible := false;
    MostrarItensMenu;
  end;
end;

procedure TFrm_menu.btn_buscarClienteClick(Sender: TObject);
begin
  if Txt_pesqClientes.text = '' then
  begin
    MessageBox(Handle, 'Insira um valor de pesquisa válido.', 'Erro!',
      MB_OK or MB_ICONERROR);
    Txt_pesqClientes.SetFocus;
    exit;
  end;
  with dm.Q_con_clientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientes');
    case Rg_OpcClientes.ItemIndex of
      0:
        begin
          SQL.Add('where id_cliente = :codigo');
          ParamByName('codigo').Value := Txt_pesqClientes.text;
        end;
      1:
        begin
          SQL.Add('where nome_cliente like :nome');
          ParamByName('nome').Value := '%' + Txt_pesqClientes.text + '%';
        end;
      2:
        begin
          SQL.Add('where cpf_cliente = :Cpf');
          ParamByName('Cpf').Value := Mk_pesqClientes.text;
        end;
      3:
        begin
          SQL.Add('where datanasc_cliente = :data_nascimento');
          ParamByName('data_nascimento').asdate :=
            Strtodate(FormatDateTime('dd/mm/yyyy',
            Strtodate(Mk_pesqClientes.text)));
        end;
    end;
    Open;
    QuantRegCliente;
  end;
end;

procedure TFrm_menu.btn_cancelarVeiculoClick(Sender: TObject);
begin
  dm.tableVeiculos.Cancel;
  ConfigBotoesVeiculo;
  ConfigCampos('Veiculos', 'id_veiculo');
end;

procedure TFrm_menu.Btn_cancelarVenda1Click(Sender: TObject);
begin
  selecCliente.TabVisible := false;
  selecVeiculo.TabVisible := false;
  CadastroVendas.TabVisible := true;
  BuscaVendas.TabVisible := false;
  PCVendas.TabIndex := 0;
  dm.tableVendas.Cancel;
  ConfigBotoesVendas;
end;

procedure TFrm_menu.btn_buscarVeiculoClick(Sender: TObject);
begin
  if Txt_pesqVeiculos.text = '' then
  begin
    MessageBox(Handle, 'Insira um valor de pesquisa válido.', 'Erro!',
      MB_OK or MB_ICONERROR);
    Txt_pesqVeiculos.SetFocus;
    exit;
  end;
  with dm.Q_con_veiculos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from veiculos');
    case Rg_OpcVeiculos.ItemIndex of
      0:
        begin
          SQL.Add('where id_veiculo = :codigo');
          ParamByName('codigo').Value := Txt_pesqVeiculos.text;
        end;
      1:
        begin
          SQL.Add('where marca_veiculo like :marca');
          ParamByName('marca').Value := '%' + Txt_pesqVeiculos.text + '%';
        end;
      2:
        begin
          SQL.Add('where modelo_veiculo like :modelo');
          ParamByName('modelo').Value := '%' + Txt_pesqVeiculos.text + '%';
        end;
      3:
        begin
          SQL.Add('where disponivel_veiculo = :disponivel');
          if SimNao.ItemIndex = 0 then
            ParamByName('disponivel').Value := true
          else
            ParamByName('disponivel').Value := false;

        end;
    end;
    Open;
    QuantRegVeiculo;
  end;
end;

procedure TFrm_menu.btn_buscarVendaClick(Sender: TObject);
begin
  with dm.Q_con_vendas do
  begin
    SQL.Clear;
    Close;
    SQL.Add('select a.id_vendas, a.cod_cliente, c.nome_cliente, a.cod_veiculo, v.marca_veiculo, v.modelo_veiculo, v.cor_veiculo, v.ano_veiculo, a.cod_funcionario, f.nome_funcionario, a.data_venda, a.valor_venda');
    SQL.Add('from vendas as a join clientes as c on a.cod_cliente = c.id_cliente join veiculos as v on a.cod_veiculo = v.id_veiculo join funcionarios as f on a.cod_funcionario = f.id_funcionario');
    case RG_opcoesVenda.ItemIndex of
      0:
        begin
          SQL.Add('where a.id_vendas = :id');
          ParamByName('id').AsInteger := Strtoint(txt_pesqVendas.text);
        end;
      1:
        begin
          SQL.Add('where c.nome_cliente like :nome');
          ParamByName('nome').AsString := '%' + txt_pesqVendas.text + '%';
        end;
      2:
        begin
          SQL.Add('where a.data_venda = :data');
          ParamByName('data').asdate := Strtodate(txt_pesqVendas.text);
        end;
    end;

    Open;
    QuantRegVenda;
  end;
end;

procedure TFrm_menu.btn_cancelarClienteClick(Sender: TObject);
begin
  dm.tableclientes.Cancel;
  ConfigBotoesCliente;
  ConfigCampos('Clientes', 'id_cliente');
end;

procedure TFrm_menu.btn_editarClienteClick(Sender: TObject);
var
  idCliente: Integer;
begin
  if DBGridCliente.SelectedRows.Count > 0 then
  begin
    idCliente := DBGridCliente.DataSource.DataSet.FieldByName('id_cliente')
      .AsInteger;
    if Application.MessageBox('Deseja editar o registro selecionado?',
      'Editar cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      dm.tableclientes.Locate('id_cliente', idCliente, []);
      dm.tableclientes.Edit;
      ConfigBotoesCliente;
      PCClientes.ActivePageIndex := 0;
      CadastroCliente.TabVisible := true;
      buscaCliente.TabVisible := false;
      ConfigCamposEdicao('CadastroCliente');
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para editar.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesCliente;
end;

procedure TFrm_menu.btn_editarVeiculoClick(Sender: TObject);
var
  idVeiculo: Integer;
begin
  if DBGridVeiculo.SelectedRows.Count > 0 then
  begin
    idVeiculo := DBGridVeiculo.DataSource.DataSet.FieldByName('id_veiculo')
      .AsInteger;
    if Application.MessageBox('Deseja editar o registro selecionado?',
      'Editar cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      dm.tableVeiculos.Locate('id_veiculo', idVeiculo, []);
      dm.tableVeiculos.Edit;
      ConfigBotoesVeiculo;
      PCVeiculos.ActivePageIndex := 0;
      CadastroVeiculos.TabVisible := true;
      BuscaVeiculos.TabVisible := false;
      ConfigCamposEdicao('CadastroVeiculos');
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para editar.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesVeiculo;
end;

procedure TFrm_menu.btn_editarVendaClick(Sender: TObject);
var
  idvendas: Integer;
begin
  if DBGridVendas.SelectedRows.Count > 0 then
  begin
    idvendas := DBGridVendas.DataSource.DataSet.FieldByName('id_vendas')
      .AsInteger;
    if Application.MessageBox('Deseja editar o registro selecionado?',
      'Editar cadastro', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      dm.tableVendas.Locate('id_vendas', idvendas, []);
      dm.tableVendas.Edit;
      ConfigBotoesVendas;
      PCVendas.ActivePageIndex := 0;
      CadastroVendas.TabVisible := true;
      BuscaVendas.TabVisible := false;
      ConfigCamposEdicao('CadastroVendas');
    end;
  end
  else
  begin
    MessageBox(Handle, 'Selecione um registro para editar.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end;
  ConfigBotoesVendas;
end;

procedure TFrm_menu.MostrarItensMenu;
var
  MenuItem: TMenuItem;
  SubMenuItem: TMenuItem;
  MenuItems: array [0 .. 2] of string;
  i, j: Integer;
begin
  MenuItems[0] := 'Clientes';
  MenuItems[1] := 'Veículos';
  MenuItems[2] := 'Vendas';
  for i := 0 to High(MenuItems) do
  begin
    MenuItem := menuPrincipal.Items.Find(MenuItems[i]);
    if Assigned(MenuItem) then
    begin
      for j := 0 to MenuItem.Count - 1 do
      begin
        SubMenuItem := MenuItem.Items[j];
        if Assigned(SubMenuItem) then
          SubMenuItem.Visible := true;
      end;
    end;
  end;
end;

procedure TFrm_menu.btn_fecharCliente2Click(Sender: TObject);
begin
  btn_fecharClienteClick(Sender);
end;

procedure TFrm_menu.btn_fecharClienteClick(Sender: TObject);
begin
  if dm.tableclientes.State in [dsInsert, dsEdit] then
  begin
    MessageBox(Handle, 'Salve ou cancele antes de sair.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end
  else
  begin
    PCClientes.Visible := false;
    MostrarItensMenu;
  end;
end;

procedure TFrm_menu.btn_voltarVeiculoClick(Sender: TObject);
begin
  PCVeiculos.TabIndex := 0;
  CadastroVeiculos.TabVisible := true;
  BuscaVeiculos.TabVisible := false;
end;

procedure TFrm_menu.Btn_voltarVendaClick(Sender: TObject);
begin
  PCVendas.TabIndex := 0;
  CadastroVendas.TabVisible := true;
  BuscaVendas.TabVisible := false;
end;

procedure TFrm_menu.btn_voltarClienteClick(Sender: TObject);
begin
  PCClientes.TabIndex := 0;
  CadastroCliente.TabVisible := true;
  buscaCliente.TabVisible := false;
end;

procedure TFrm_menu.btn_inserirVeiculoClick(Sender: TObject);
begin
  dm.tableVeiculos.Active := true;
  dm.tableVeiculos.Insert;
  ConfigBotoesVeiculo;
  ConfigCampos('Veiculos', 'id_veiculo');
end;

procedure TFrm_menu.btn_inserirClienteClick(Sender: TObject);
begin
  dm.tableclientes.Active := true;
  dm.tableclientes.Insert;
  ConfigBotoesCliente;
  ConfigCampos('Clientes', 'id_cliente');
end;

procedure TFrm_menu.btn_localizarVeiculoClick(Sender: TObject);
begin
  PCVeiculos.TabIndex := 1;
  CadastroVeiculos.TabVisible := false;
  BuscaVeiculos.TabVisible := true;
end;

procedure TFrm_menu.btn_localizarVendaClick(Sender: TObject);
begin
  PCVendas.TabIndex := 1;
  BuscaVendas.TabVisible := true;
  CadastroVendas.TabVisible := false;

end;

procedure TFrm_menu.btn_pesquisarClienteClick(Sender: TObject);
begin
  if Mk_pesquisarCliente.text <> '   .   .   -  ' then
  begin
    with dm.Q_pesqCliente_vendas do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from clientes where cpf_cliente = :cpf');
      ParamByName('cpf').AsString := Mk_pesquisarCliente.text;
      Open;
    end;
  end;
end;

procedure TFrm_menu.btn_pesquisarVeiculoClick(Sender: TObject);
begin
  if txt_pesquisarVeiculo.text = '' then
  begin
    MessageBox(Handle, 'Insira um valor de pesquisa válido.', 'Erro!',
      MB_OK or MB_ICONERROR);
    txt_pesquisarVeiculo.SetFocus;
    exit;
  end;
  with dm.Q_pesqveiculo_vendas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from veiculos');
    case VeicSelecEscolha.ItemIndex of
      0:
        begin
          SQL.Add('where marca_veiculo like :marca');
          ParamByName('marca').Value := '%' + txt_pesquisarVeiculo.text + '%';
        end;
      1:
        begin
          SQL.Add('where modelo_veiculo like :modelo');
          ParamByName('modelo').Value := '%' + txt_pesquisarVeiculo.text + '%';
        end;
      2:
        begin
          SQL.Add('where ano_veiculo = :ano');
          ParamByName('ano').Value := txt_pesquisarVeiculo.text;
        end;
    end;
    SQL.Add('and disponivel_veiculo = true');
    Open;
    QuantRegVeiculo;
  end;
end;

procedure TFrm_menu.Btn_ProsseguirVenda1Click(Sender: TObject);
begin
  PCVendas.TabIndex := 3;
  selecCliente.TabVisible := false;
  selecVeiculo.TabVisible := true;
  CadastroVendas.TabVisible := false;
  BuscaVendas.TabVisible := false;

  ConfigBotoesVendas;
end;

procedure TFrm_menu.Btn_ProsseguirVenda2Click(Sender: TObject);
begin
  PCVendas.TabIndex := 0;
  selecCliente.TabVisible := false;
  selecVeiculo.TabVisible := false;
  CadastroVendas.TabVisible := true;
  BuscaVendas.TabVisible := false;

  ConfigBotoesVendas;
end;

procedure TFrm_menu.btn_localizarClienteClick(Sender: TObject);
begin
  PCClientes.TabIndex := 1;
  CadastroCliente.TabVisible := false;
  buscaCliente.TabVisible := true;
end;

procedure TFrm_menu.btn_salvarVeiculoClick(Sender: TObject);
var
  i: Integer;
  campoVazio, editando: Boolean;
begin
  campoVazio := false;
  editando := dm.tableVeiculos.State = dsEdit;

  for i := 0 to CadastroVeiculos.ControlCount - 1 do
  begin
    if CadastroVeiculos.Controls[i] is TDBEdit then
    begin
      if TDBEdit(CadastroVeiculos.Controls[i]).text = '' then
      begin
        campoVazio := true;
        Break;
      end;
    end;
  end;

  if campoVazio then
  begin
    MessageBox(Handle, 'Preencha todos os campos.', 'Erro!',
      MB_OK or MB_ICONERROR);
  end
  else
  begin
    dm.tableVeiculos.Post;
    ConfigBotoesVeiculo;
    DBGridVeiculo.DataSource.DataSet.Close;
    DBGridVeiculo.DataSource.DataSet.Open;
    ConfigCampos('Veiculos', 'id_veiculo');

    if editando then
    begin
      MessageBox(0, 'Edição salva com sucesso.', 'Sucesso!', MB_OK);
      btn_localizarVeiculoClick(Sender);
    end
    else
    begin
      MessageBox(0, 'Salvo com sucesso.', 'Sucesso!', MB_OK);
    end;
  end;
end;

procedure TFrm_menu.btn_salvarClienteClick(Sender: TObject);
var
  i: Integer;
  campoVazio, editando: Boolean;
  telefoneEdit: TDBEdit;
  telefone: string;
begin
  campoVazio := false;
  editando := dm.tableclientes.State = dsEdit;

  try
    for i := 0 to CadastroCliente.ControlCount - 1 do
    begin
      if CadastroCliente.Controls[i] is TDBEdit then
      begin
        if TDBEdit(CadastroCliente.Controls[i]).text = '' then
        begin
          campoVazio := true;
          Break;
        end;
      end;
    end;

    if campoVazio then
    begin
      MessageBox(Handle, 'Preencha todos os campos.', 'Erro!',
        MB_OK or MB_ICONERROR);
    end
    else if verificarCPF(Txt_CPFClientes.text) then
    begin
      telefoneEdit := TDBEdit(FindComponent('Txt_telefoneCliente'));
      if (telefoneEdit <> nil) then
      begin
        telefone := Trim(telefoneEdit.text);

        if Length(telefone) = 14 then
        begin
          dm.tableclientes.Post;
          ConfigBotoesCliente;
          ConfigCampos('Clientes', 'id_cliente');
          DBGridCliente.DataSource.DataSet.Close;
          DBGridCliente.DataSource.DataSet.Open;

          if editando then
          begin
            MessageBox(0, 'Edição salva com sucesso.', 'Sucesso!', MB_OK);
            btn_localizarClienteClick(Sender);
          end
          else
          begin
            MessageBox(0, 'Salvo com sucesso.', 'Sucesso!', MB_OK);
          end;
        end
        else
        begin
          MessageBox(Handle, 'Insira um telefone válido.', 'Erro!',
            MB_OK or MB_ICONERROR);
        end;
      end;
    end
    else
    begin
      MessageBox(Handle, 'Insira um CPF válido.', 'Erro!',
        MB_OK or MB_ICONERROR);
    end;
  except
    on excecao: EConvertError do
    begin
      MessageBox(Handle, 'Insira um CPF válido.', 'Erro!',
        MB_OK or MB_ICONERROR);
    end;
    on E: EFDDBEngineException do
    begin
      if E.Kind = ekUKViolated then
        MessageBox(Handle, 'CPF duplicado.', 'Erro!', MB_OK or MB_ICONERROR)
      else
        raise;
    end;
  end;
end;

procedure TFrm_menu.ConfigBotoesCliente;
begin
  ItemClientes.Enabled := dm.tableclientes.State in [dsBrowse];
  ItemVeiculos.Enabled := dm.tableclientes.State in [dsBrowse];
  ItemVendas.Enabled := dm.tableclientes.State in [dsBrowse];
  btn_inserirCliente.Enabled := dm.tableclientes.State in [dsBrowse];
  btn_editarCliente.Enabled := dm.tableclientes.State in [dsBrowse];
  btn_excluirCliente.Enabled := dm.tableclientes.State in [dsBrowse];
  btn_localizarCliente.Enabled := dm.tableclientes.State in [dsBrowse];
  btn_salvarCliente.Enabled := dm.tableclientes.State in [dsInsert, dsEdit];
  btn_cancelarCliente.Enabled := dm.tableclientes.State in [dsInsert, dsEdit];
end;

procedure TFrm_menu.ConfigBotoesVeiculo;
begin
  ItemClientes.Enabled := dm.tableVeiculos.State in [dsBrowse];
  ItemVeiculos.Enabled := dm.tableVeiculos.State in [dsBrowse];
  ItemVendas.Enabled := dm.tableVeiculos.State in [dsBrowse];
  btn_inserirVeiculo.Enabled := dm.tableVeiculos.State in [dsBrowse];
  btn_editarVeiculo.Enabled := dm.tableVeiculos.State in [dsBrowse];
  btn_excluirVeiculo.Enabled := dm.tableVeiculos.State in [dsBrowse];
  btn_localizarVeiculo.Enabled := dm.tableVeiculos.State in [dsBrowse];
  btn_salvarVeiculo.Enabled := dm.tableVeiculos.State in [dsInsert, dsEdit];
  btn_cancelarVeiculo.Enabled := dm.tableVeiculos.State in [dsInsert, dsEdit];
end;

procedure TFrm_menu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (dm.tableclientes.State in [dsInsert, dsEdit]) or
    (dm.tableVeiculos.State in [dsInsert, dsEdit]) or
    (dm.tableVendas.State in [dsInsert, dsEdit]) then
  begin
    MessageBox(Handle, 'Salve ou cancele antes de fechar.', 'Erro!',
      MB_OK or MB_ICONERROR);
    CanClose := false;
  end
  else
    CanClose := true;
end;

procedure TFrm_menu.QuantRegCliente;
begin
  if dm.Q_con_clientes.RecordCount = 0 then
  begin
    LabelQuantRegCliente.Caption := 'Nenhum registro foi encontrado';
  end;
  if dm.Q_con_clientes.RecordCount = 1 then
  begin
    LabelQuantRegCliente.Caption := 'Foi encontrado apenas 1 registro';
  end;
  if dm.Q_con_clientes.RecordCount > 1 then
  begin
    LabelQuantRegCliente.Caption := 'Foram encontrados ' +
      IntToStr(dm.Q_con_clientes.RecordCount) + ' registros';
  end;
end;

procedure TFrm_menu.QuantRegVeiculo;
begin
  with dm do
  begin
    if dm.Q_con_veiculos.RecordCount = 0 then
    begin
      LabelQuantRegVeiculo.Caption := 'Nenhum registro foi encontrado';
    end;
    if dm.Q_con_veiculos.RecordCount = 1 then
    begin
      LabelQuantRegVeiculo.Caption := 'Foi encontrado apenas 1 registro';
    end;
    if dm.Q_con_veiculos.RecordCount > 1 then
    begin
      LabelQuantRegVeiculo.Caption := 'Foram encontrados ' +
        IntToStr(dm.Q_con_veiculos.RecordCount) + ' registros';
    end;
  end;
end;

procedure TFrm_menu.QuantRegVenda;
begin
  if dm.Q_con_vendas.RecordCount = 0 then
  begin
    LabelQuantRegvendas.Caption := 'Nenhum registro foi encontrado';
  end;
  if dm.Q_con_vendas.RecordCount = 1 then
  begin
    LabelQuantRegvendas.Caption := 'Foi encontrado apenas 1 registro';
  end;
  if dm.Q_con_vendas.RecordCount > 1 then
  begin
    LabelQuantRegvendas.Caption := 'Foram encontrados ' +
      IntToStr(dm.Q_con_vendas.RecordCount) + ' registros';
  end;
end;

procedure TFrm_menu.FecharMenu;
begin
  PCClientes.Visible := false;
  PCVeiculos.Visible := false;
end;

procedure TFrm_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MostrarItensMenu;
  FecharMenu;
  frm_login.Visible := true;
  frm_login.EditUsuario.text := '';
  frm_login.EditSenha.text := '';
end;

procedure TFrm_menu.ConfigCampos(Tabela: string; CampoID: string);
(* ConfigCampos('Clientes', 'id_cliente');
  ConfigCampos('Veiculos', 'id_veiculo');
  ConfigCampos('Vendas', 'id_vendas'); *)
var
  i, j: Integer;
  TabelaAtiva: TDataSet;
  Txt_ID: TDBEdit;
begin
  if Tabela = 'Clientes' then
  begin
    TabelaAtiva := dm.tableclientes;
    Txt_ID := Txt_IDClientes;
  end
  else if Tabela = 'Veiculos' then
  begin
    TabelaAtiva := dm.tableVeiculos;
    Txt_ID := Txt_IDVeiculos;
  end
  (* else if Tabela = 'Vendas' then
    begin
    TabelaAtiva := dm.tablevendas;
    Txt_ID := Txt_IDVendas;
    end *)
  else
    exit;

  Txt_ID.Visible := TabelaAtiva.State in [dsInsert, dsEdit];

  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
      TDBEdit(Components[i]).Enabled := TabelaAtiva.State in [dsInsert, dsEdit];
  end;

  for j := 0 to ComponentCount - 1 do
  begin
    if Components[j] is TDBEdit then
    begin
      if (TDBEdit(Components[j]).DataField <> CampoID) then
        TDBEdit(Components[j]).text := '';
    end;
  end;
end;

procedure TFrm_menu.ConfigCamposEdicao(const NomeTabSheet: string);
// ex: ConfigCamposEdicao('CadastroCliente');
var
  i: Integer;
  TabSheet: TTabSheet;
begin
  TabSheet := FindComponent(NomeTabSheet) as TTabSheet;
  if TabSheet <> nil then
  begin
    for i := 0 to TabSheet.ControlCount - 1 do
    begin
      if TabSheet.Controls[i] is TDBEdit then
      begin
        TDBEdit(TabSheet.Controls[i]).Enabled := true;
        TDBEdit(TabSheet.Controls[i]).Visible := true;
      end;
    end;
  end;
end;

procedure TFrm_menu.DBGridVeiculoDblClick(Sender: TObject);
var
  ClientDataSet: TClientDataSet;
  marcaVeiculo, modeloVeiculo, anoVeiculo, corVeiculo,
    precoVeiculo, disponivelVeiculo, detalhesVeiculo, textoMessageBox: string;
begin
  if DBGridVeiculo.SelectedRows.Count = 0 then
    exit;
  ClientDataSet := TClientDataSet(DBGridVeiculo.DataSource.DataSet);
  ClientDataSet.Bookmark := DBGridVeiculo.SelectedRows[0];
  marcaVeiculo := ClientDataSet.FieldByName('marca_veiculo').AsString;
  modeloVeiculo := ClientDataSet.FieldByName('modelo_veiculo').AsString;
  anoVeiculo := ClientDataSet.FieldByName('ano_veiculo').AsString;
  corVeiculo := ClientDataSet.FieldByName('cor_veiculo').AsString;
  precoVeiculo := ClientDataSet.FieldByName('preco_veiculo').AsString;
  disponivelVeiculo := ClientDataSet.FieldByName('disponivel_veiculo').AsString;
  detalhesVeiculo := 'Marca: ' + marcaVeiculo +
    #13 + 'Modelo: ' + modeloVeiculo + #13 + 'Ano: ' + anoVeiculo + #13 +
    'Cor: ' + corVeiculo + #13 + 'Preço: ' + precoVeiculo + #13 + 'Disponível: '
    + disponivelVeiculo;
  textoMessageBox := detalhesVeiculo + #13 + #13 + 'Deseja copiar esses dados?';
  if MessageBox(Handle, PChar(textoMessageBox), 'Detalhes do Veículo', MB_YESNO)
    = IDYES then
  begin
    Clipboard.AsText := detalhesVeiculo;
  end;
end;

procedure TFrm_menu.Dg_ClientesVendasCellClick(Column: TColumn);
begin
  with Dg_ClientesVendas.DataSource.DataSet do
  begin
    txt_SelecionarCliente.text := FieldByName('nome_cliente').AsString;
    txt_ClienteVenda.text := FieldByName('id_cliente').AsString;
  end;
  Btn_ProsseguirVenda1.Enabled := true;
end;

procedure TFrm_menu.DG_VeiculosVendasCellClick(Column: TColumn);
begin
  with DG_VeiculosVendas.DataSource.DataSet do
  begin
    txt_selecionarVeiculo.text := FieldByName('Marca_veiculo').AsString + ' - '
      + FieldByName('Modelo_veiculo').AsString + ' - ' +
      FieldByName('ano_veiculo').AsString;
    txt_VeicVenda.text := FieldByName('id_veiculo').AsString;
    txt_valorVenda.text := FieldByName('Preco_veiculo').AsString;
  end;
  Btn_ProsseguirVenda2.Enabled := true;

end;

procedure TFrm_menu.DBGridClienteDblClick(Sender: TObject);
var
  ClientDataSet: TClientDataSet;
  nomeCliente, cpfCliente, telefoneCliente, emailCliente, datanascCliente,
    enderecoCliente, detalhesCliente, textoMessageBox: string;
begin
  if DBGridCliente.SelectedRows.Count = 0 then
    exit;
  ClientDataSet := TClientDataSet(DBGridCliente.DataSource.DataSet);
  ClientDataSet.Bookmark := DBGridCliente.SelectedRows[0];
  nomeCliente := ClientDataSet.FieldByName('nome_cliente').AsString;
  cpfCliente := ClientDataSet.FieldByName('cpf_cliente').AsString;
  telefoneCliente := ClientDataSet.FieldByName('telefone_cliente').AsString;
  emailCliente := ClientDataSet.FieldByName('email_cliente').AsString;
  datanascCliente := ClientDataSet.FieldByName('datanasc_cliente').AsString;
  enderecoCliente := ClientDataSet.FieldByName('endereco_cliente').AsString;
  detalhesCliente := 'Nome: ' + nomeCliente + #13 + 'CPF: ' + cpfCliente + #13 +
    'Telefone: ' + telefoneCliente + #13 + 'E-mail: ' + emailCliente + #13 +
    'Data de Nascimento: ' + datanascCliente + #13 + 'Endereço: ' +
    enderecoCliente;
  textoMessageBox := detalhesCliente + #13 + #13 + 'Deseja copiar esses dados?';
  if MessageBox(Handle, PChar(textoMessageBox), 'Detalhes do Cliente', MB_YESNO)
    = IDYES then
  begin
    Clipboard.AsText := detalhesCliente;
  end;
end;

procedure TFrm_menu.FormCreate(Sender: TObject);
begin
  Txt_pesqVeiculos.Clear;
  Txt_pesqVeiculos.Visible := true;
  Txt_pesqVeiculos.NumbersOnly := true;
  SimNao.Visible := false;
  DBGridCliente.Options := DBGridCliente.Options + [dgMultiSelect];
  DBGridVeiculo.Options := DBGridCliente.Options + [dgMultiSelect];
  DBGridVendas.Options := DBGridCliente.Options + [dgMultiSelect];
  ConfigBotoesCliente;
  ConfigBotoesVeiculo;
  ConfigBotoesVendas;
  ConfigCampos('Clientes', 'id_cliente');
  ConfigCampos('Veiculos', 'id_veiculo');
  ConfigCampos('Vendas', 'id_vendas');
  btn_tudoClienteClick(Sender);
  btn_tudoVeiculoClick(Sender);
  btn_TudoVendasClick(Sender);
end;

procedure TFrm_menu.TimerRodapeTimer(Sender: TObject);
begin
  StatusBarRodape.Panels[1].text := 'Funcionário: ' + frm_login.nomeFuncionario;
  StatusBarRodape.Panels[2].text := 'Data: ' +
    FormatDateTime('dddd, dd "de" mmmm "de" yyyy', Now);
  StatusBarRodape.Panels[3].text := 'Hora: ' + FormatDateTime('hh:mm:ss', Now);
end;

procedure TFrm_menu.Txt_MarcaVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirString(Key);
end;

procedure TFrm_menu.Txt_AnoVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirInt(Key);
end;

procedure TFrm_menu.Txt_CorVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirString(Key);
end;

procedure TFrm_menu.Txt_PreçoVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirDouble(TEdit(Sender), Key);
end;

procedure TFrm_menu.Txt_NomeClientesKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirString(Key);
end;

procedure TFrm_menu.txt_pesqVendasKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirInt(Key);
end;

procedure TFrm_menu.ConfigBotoesVendas;
begin
  ItemClientes.Enabled := dm.tableVendas.State in [dsBrowse];
  ItemVeiculos.Enabled := dm.tableVendas.State in [dsBrowse];
  ItemVendas.Enabled := dm.tableVendas.State in [dsBrowse];
  Btn_inserirVendas.Enabled := dm.tableVendas.State in [dsBrowse];
  btn_editarVenda.Enabled := dm.tableVendas.State in [dsBrowse];
  Btn_excluirVenda.Enabled := dm.tableVendas.State in [dsBrowse];
  btn_localizarVenda.Enabled := dm.tableVendas.State in [dsBrowse];
  Btn_SalvarVenda.Enabled := dm.tableVendas.State in [dsInsert, dsEdit];
  Btn_cancelarVenda.Enabled := dm.tableVendas.State in [dsInsert, dsEdit];
end;

end.
