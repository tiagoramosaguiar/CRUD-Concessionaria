object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 335
  Width = 720
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=concessionaria'
      'DriverID=MySQL')
    Left = 40
    Top = 32
  end
  object TableClientes: TFDTable
    IndexFieldNames = 'id_cliente'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'concessionaria.clientes'
    TableName = 'concessionaria.clientes'
    Left = 112
    Top = 32
    object TableClientesid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object TableClientesnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 50
    end
    object TableClientescpf_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cliente'
      Origin = 'cpf_cliente'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object TableClientestelefone_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_cliente'
      Origin = 'telefone_cliente'
      EditMask = '(99)99999-9999;1;_'
      Size = 16
    end
    object TableClientesendereco_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 50
    end
    object TableClientesemail_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 50
    end
    object TableClientesdatanasc_cliente: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanasc_cliente'
      Origin = 'datanasc_cliente'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object DSClientes: TDataSource
    DataSet = TableClientes
    Left = 112
    Top = 88
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\SistemaGenerico\Lib\libmysql.dll'
    Left = 40
    Top = 88
  end
  object TableFuncionarios: TFDTable
    IndexFieldNames = 'id_funcionario'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'concessionaria.funcionarios'
    TableName = 'concessionaria.funcionarios'
    Left = 200
    Top = 32
    object TableFuncionariosid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TableFuncionariosnome_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_funcionario'
      Origin = 'nome_funcionario'
      Size = 50
    end
    object TableFuncionarioscpf_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_funcionario'
      Origin = 'cpf_funcionario'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object TableFuncionarioscargo_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo_funcionario'
      Origin = 'cargo_funcionario'
      Size = 50
    end
    object TableFuncionariostelefone_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_funcionario'
      Origin = 'telefone_funcionario'
      EditMask = '(99)99999-9999;1;_'
      Size = 16
    end
    object TableFuncionariossalario_funcionario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'salario_funcionario'
      Origin = 'salario_funcionario'
    end
    object TableFuncionariossenha_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha_funcionario'
      Origin = 'senha_funcionario'
      Size = 50
    end
  end
  object DSFuncionarios: TDataSource
    DataSet = TableFuncionarios
    Left = 200
    Top = 88
  end
  object TableVeiculos: TFDTable
    IndexFieldNames = 'id_veiculo'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'concessionaria.veiculos'
    TableName = 'concessionaria.veiculos'
    Left = 288
    Top = 32
    object TableVeiculosid_veiculo: TFDAutoIncField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TableVeiculosmarca_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_veiculo'
      Origin = 'marca_veiculo'
      Size = 50
    end
    object TableVeiculosmodelo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo_veiculo'
      Origin = 'modelo_veiculo'
      Size = 50
    end
    object TableVeiculosano_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ano_veiculo'
      Origin = 'ano_veiculo'
      Size = 4
    end
    object TableVeiculoscor_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 50
    end
    object TableVeiculospreco_veiculo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco_veiculo'
      Origin = 'preco_veiculo'
    end
    object TableVeiculosdisponivel_veiculo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'disponivel_veiculo'
      Origin = 'disponivel_veiculo'
    end
  end
  object DSVeiculos: TDataSource
    DataSet = TableVeiculos
    Left = 288
    Top = 88
  end
  object TableVendas: TFDTable
    IndexFieldNames = 'id_vendas'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'concessionaria.vendas'
    TableName = 'concessionaria.vendas'
    Left = 384
    Top = 32
    object TableVendasid_vendas: TFDAutoIncField
      FieldName = 'id_vendas'
      Origin = 'id_vendas'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TableVendascod_veiculo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_veiculo'
      Origin = 'cod_veiculo'
    end
    object TableVendascod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object TableVendascod_funcionario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_funcionario'
      Origin = 'cod_funcionario'
    end
    object TableVendasdata_venda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_venda'
      Origin = 'data_venda'
      EditMask = '!99/99/9999;1;_'
    end
    object TableVendasvalor_venda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_venda'
      Origin = 'valor_venda'
    end
  end
  object DSVendas: TDataSource
    DataSet = TableVendas
    Left = 384
    Top = 88
  end
  object Wait: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 560
    Top = 32
  end
  object QueryCredenciais: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT COUNT(*) FROM funcionarios WHERE nome_funcionario = :usua' +
        'rio AND senha_funcionario = :senha')
    Left = 560
    Top = 88
    ParamData = <
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        Name = 'SENHA'
        ParamType = ptInput
      end>
  end
  object Q_con_clientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 112
    Top = 152
    object Q_con_clientesid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_con_clientesnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 50
    end
    object Q_con_clientescpf_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cliente'
      Origin = 'cpf_cliente'
      Size = 15
    end
    object Q_con_clientestelefone_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_cliente'
      Origin = 'telefone_cliente'
      Size = 16
    end
    object Q_con_clientesendereco_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 50
    end
    object Q_con_clientesemail_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 50
    end
    object Q_con_clientesdatanasc_cliente: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanasc_cliente'
      Origin = 'datanasc_cliente'
    end
  end
  object Q_pesqFunc_vendas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from funcionarios')
    Left = 592
    Top = 152
    object Q_pesqFunc_vendasid_funcionario: TFDAutoIncField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_pesqFunc_vendasnome_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_funcionario'
      Origin = 'nome_funcionario'
      Size = 50
    end
    object Q_pesqFunc_vendascpf_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_funcionario'
      Origin = 'cpf_funcionario'
      Size = 15
    end
    object Q_pesqFunc_vendascargo_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo_funcionario'
      Origin = 'cargo_funcionario'
      Size = 50
    end
    object Q_pesqFunc_vendastelefone_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_funcionario'
      Origin = 'telefone_funcionario'
      Size = 16
    end
    object Q_pesqFunc_vendassalario_funcionario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'salario_funcionario'
      Origin = 'salario_funcionario'
    end
    object Q_pesqFunc_vendassenha_funcionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha_funcionario'
      Origin = 'senha_funcionario'
      Size = 50
    end
  end
  object Q_con_veiculos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculos')
    Left = 288
    Top = 152
    object Q_con_veiculosid_veiculo: TFDAutoIncField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_con_veiculosmarca_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_veiculo'
      Origin = 'marca_veiculo'
      Size = 50
    end
    object Q_con_veiculosmodelo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo_veiculo'
      Origin = 'modelo_veiculo'
      Size = 50
    end
    object Q_con_veiculosano_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ano_veiculo'
      Origin = 'ano_veiculo'
      Size = 4
    end
    object Q_con_veiculoscor_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 50
    end
    object Q_con_veiculospreco_veiculo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco_veiculo'
      Origin = 'preco_veiculo'
    end
    object Q_con_veiculosdisponivel_veiculo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'disponivel_veiculo'
      Origin = 'disponivel_veiculo'
    end
  end
  object Q_con_vendas: TFDQuery
    FieldOptions.UpdatePersistent = True
    Connection = Conexao
    SQL.Strings = (
      
        'select a.id_vendas, a.cod_cliente, c.nome_cliente, a.cod_veiculo' +
        ', v.marca_veiculo, v.modelo_veiculo, v.cor_veiculo, v.ano_veicul' +
        'o, a.cod_funcionario, f.nome_funcionario, a.data_venda, a.valor_' +
        'venda from vendas as a join clientes as c on a.cod_cliente = c.i' +
        'd_cliente join veiculos as v on a.cod_veiculo = v.id_veiculo joi' +
        'n funcionarios as f on a.cod_funcionario = f.id_funcionario')
    Left = 384
    Top = 152
    object Q_con_vendasid_vendas: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id_vendas'
      ReadOnly = True
    end
    object Q_con_vendascod_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'cod_cliente'
    end
    object Q_con_vendasnome_cliente: TStringField
      DisplayWidth = 14
      FieldName = 'nome_cliente'
      ReadOnly = True
      Size = 50
    end
    object Q_con_vendascod_veiculo: TIntegerField
      DisplayWidth = 10
      FieldName = 'cod_veiculo'
    end
    object Q_con_vendasmarca_veiculo: TStringField
      DisplayWidth = 50
      FieldName = 'marca_veiculo'
      ReadOnly = True
      Size = 50
    end
    object Q_con_vendasmodelo_veiculo: TStringField
      DisplayWidth = 50
      FieldName = 'modelo_veiculo'
      ReadOnly = True
      Size = 50
    end
    object Q_con_vendascor_veiculo: TStringField
      DisplayWidth = 50
      FieldName = 'cor_veiculo'
      ReadOnly = True
      Size = 50
    end
    object Q_con_vendasano_veiculo: TStringField
      DisplayWidth = 9
      FieldName = 'ano_veiculo'
      ReadOnly = True
      Size = 4
    end
    object Q_con_vendascod_funcionario: TIntegerField
      DisplayWidth = 12
      FieldName = 'cod_funcionario'
    end
    object Q_con_vendasnome_funcionario: TStringField
      DisplayWidth = 50
      FieldName = 'nome_funcionario'
      ReadOnly = True
      Size = 50
    end
    object Q_con_vendasdata_venda: TDateField
      DisplayWidth = 10
      FieldName = 'data_venda'
    end
    object Q_con_vendasvalor_venda: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_venda'
    end
  end
  object ds_con_clientes: TDataSource
    DataSet = Q_con_clientes
    Left = 112
    Top = 208
  end
  object Ds_pesqFunc_vendas: TDataSource
    DataSet = Q_pesqFunc_vendas
    Left = 592
    Top = 208
  end
  object ds_con_veiculos: TDataSource
    DataSet = Q_con_veiculos
    Left = 288
    Top = 208
  end
  object DS_con_Vendas: TDataSource
    DataSet = Q_con_vendas
    Left = 384
    Top = 208
  end
  object Q_pesqCliente_vendas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 200
    Top = 152
    object Q_pesqCliente_vendasid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_pesqCliente_vendasnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 50
    end
    object Q_pesqCliente_vendascpf_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cliente'
      Origin = 'cpf_cliente'
      Size = 15
    end
    object Q_pesqCliente_vendastelefone_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone_cliente'
      Origin = 'telefone_cliente'
      Size = 16
    end
    object Q_pesqCliente_vendasendereco_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 50
    end
    object Q_pesqCliente_vendasemail_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 50
    end
    object Q_pesqCliente_vendasdatanasc_cliente: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanasc_cliente'
      Origin = 'datanasc_cliente'
    end
  end
  object ds_pesqClientes_Vendas: TDataSource
    DataSet = Q_pesqCliente_vendas
    Left = 200
    Top = 208
  end
  object Q_pesqVeiculo_Vendas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculos where disponivel_veiculo = True')
    Left = 472
    Top = 144
    object Q_pesqVeiculo_Vendasid_veiculo: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_pesqVeiculo_Vendasmarca_veiculo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 16
      FieldName = 'marca_veiculo'
      Origin = 'marca_veiculo'
      Size = 50
    end
    object Q_pesqVeiculo_Vendasmodelo_veiculo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 17
      FieldName = 'modelo_veiculo'
      Origin = 'modelo_veiculo'
      Size = 50
    end
    object Q_pesqVeiculo_Vendascor_veiculo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 16
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 50
    end
    object Q_pesqVeiculo_Vendaspreco_veiculo: TFloatField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'preco_veiculo'
      Origin = 'preco_veiculo'
    end
    object Q_pesqVeiculo_Vendasdisponivel_veiculo: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 14
      FieldName = 'disponivel_veiculo'
      Origin = 'disponivel_veiculo'
    end
    object Q_pesqVeiculo_Vendasano_veiculo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 9
      FieldName = 'ano_veiculo'
      Origin = 'ano_veiculo'
      Size = 4
    end
  end
  object ds_pesqveiculos_vendas: TDataSource
    DataSet = Q_pesqVeiculo_Vendas
    Left = 472
    Top = 208
  end
  object Report: TfrxReport
    Version = '2023.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45104.429419942100000000
    ReportOptions.LastChange = 45104.435200231500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 72.000000000000000000
        Top = 84.000000000000000000
        Width = 168.000000000000000000
        Height = 16.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome da venda:')
        ParentFont = False
        Wysiwyg = False
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object frxDBDataset1modelo_veiculo: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 302.362400000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Modelo: [frxDBDataset1."modelo_veiculo"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 221.372471430000000000
        Top = 29.696307140000000000
        Width = 277.525488570000000000
        Height = 32.395971430000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Relat'#243'rio de Vendas')
        ParentFont = False
      end
      object frxDBDataset1nome_cliente: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 151.181200000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome: [frxDBDataset1."nome_cliente"]')
        ParentFont = False
      end
      object frxDBDataset1marca_veiculo: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 264.567100000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Marca: [frxDBDataset1."marca_veiculo"]')
        ParentFont = False
      end
      object frxDBDataset1cor_veiculo: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 340.157700000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cor: [frxDBDataset1."cor_veiculo"]')
        ParentFont = False
      end
      object frxDBDataset1ano_veiculo: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 377.953000000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Ano: [frxDBDataset1."ano_veiculo"]')
        ParentFont = False
      end
      object frxDBDataset1data_venda: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 529.134200000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Data: [frxDBDataset1."data_venda"]')
        ParentFont = False
      end
      object frxDBDataset1valor_venda: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 566.929500000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Valor: [frxDBDataset1."valor_venda"]')
        ParentFont = False
      end
      object frxDBDataset1nome_funcionario: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 453.543600000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome: [frxDBDataset1."nome_funcionario"]')
        ParentFont = False
      end
      object frxDBDataset1cpf_cliente: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 188.976500000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'CPF: [frxDBDataset1."cpf_cliente"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 113.385900000000000000
        Width = 207.874150000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Informa'#231#245'es do cliente')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 226.771800000000000000
        Width = 207.874150000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Informa'#231#245'es do ve'#237'culo')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 415.748300000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Informa'#231#245'es do funcion'#225'rio')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 491.338900000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Informa'#231#245'es da venda')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 160
    Top = 272
  end
  object Q_relatorio: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select a.id_vendas, a.cod_cliente, c.nome_cliente, c.cpf_cliente' +
        ', a.cod_veiculo, v.marca_veiculo, v.modelo_veiculo, v.cor_veicul' +
        'o, v.ano_veiculo, a.cod_funcionario, f.nome_funcionario, a.data_' +
        'venda, a.valor_venda from vendas as a join clientes as c on a.co' +
        'd_cliente = c.id_cliente join veiculos as v on a.cod_veiculo = v' +
        '.id_veiculo join funcionarios as f on a.cod_funcionario = f.id_f' +
        'uncionario')
    Left = 264
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = Q_relatorio
    Left = 344
    Top = 272
  end
end
