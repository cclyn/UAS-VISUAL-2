object Form1: TForm1
  Left = 183
  Top = 166
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object lbl1: TLabel
    Left = 80
    Top = 40
    Width = 34
    Height = 25
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 80
    Top = 88
    Width = 56
    Height = 25
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 80
    Top = 136
    Width = 46
    Height = 25
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 80
    Top = 184
    Width = 59
    Height = 25
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 80
    Top = 232
    Width = 77
    Height = 25
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 80
    Top = 280
    Width = 82
    Height = 25
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 496
    Top = 8
    Width = 81
    Height = 23
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDiskon: TLabel
    Left = 592
    Top = 8
    Width = 123
    Height = 23
    Caption = 'Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblId: TLabel
    Left = 32
    Top = 456
    Width = 24
    Height = 25
    Caption = ' id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblClickId: TLabel
    Left = 488
    Top = 456
    Width = 24
    Height = 25
    Caption = ' id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNik: TEdit
    Left = 200
    Top = 40
    Width = 241
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 200
    Top = 88
    Width = 241
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtTelp: TEdit
    Left = 200
    Top = 136
    Width = 241
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 200
    Top = 184
    Width = 241
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtAlamat: TEdit
    Left = 200
    Top = 232
    Width = 241
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cbbMember: TComboBox
    Left = 200
    Top = 280
    Width = 145
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 23
    ParentFont = False
    TabOrder = 5
    OnChange = cbbMemberChange
    Items.Strings = (
      'Yes'
      'No')
  end
  object dbgrd1: TDBGrid
    Left = 488
    Top = 40
    Width = 497
    Height = 393
    DataSource = ds1
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnBaru: TButton
    Left = 16
    Top = 344
    Width = 89
    Height = 41
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btnBaruClick
  end
  object btnSimpan: TButton
    Left = 128
    Top = 344
    Width = 89
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 352
    Top = 344
    Width = 89
    Height = 41
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 128
    Top = 408
    Width = 89
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btnHapusClick
  end
  object btnBatal: TButton
    Left = 16
    Top = 408
    Width = 89
    Height = 41
    Caption = 'BATAL'
    TabOrder = 11
  end
  object btnEditUpdate: TBitBtn
    Left = 352
    Top = 408
    Width = 91
    Height = 41
    Caption = 'UPDATE'
    TabOrder = 12
    OnClick = btnEditUpdateClick
  end
  object DBConnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql.dll'
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=db_penjualan'
      'User_Name=root'
      'Password='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 88
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 336
  end
  object sqltbl1: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = DBConnection
    TableName = 'kustomer'
    Left = 160
  end
  object dtstprvdr1: TDataSetProvider
    DataSet = sqltbl1
    Left = 216
  end
  object ds2: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dtstprvdr1'
    Left = 280
  end
end
