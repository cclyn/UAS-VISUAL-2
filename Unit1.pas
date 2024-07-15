unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBXpress, DB, SqlExpr, FMTBcd,
  DBClient, Provider, Buttons;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtNik: TEdit;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    edtAlamat: TEdit;
    cbbMember: TComboBox;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    DBConnection: TSQLConnection;
    ds1: TDataSource;
    lblDiskon: TLabel;
    sqltbl1: TSQLTable;
    lblId: TLabel;
    dtstprvdr1: TDataSetProvider;
    ds2: TClientDataSet;
    btnEditUpdate: TBitBtn;
    lblClickId: TLabel;

    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure cbbMemberChange(Sender: TObject);
    procedure btnEditUpdateClick(Sender: TObject);
    //procedure lblIdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBaruClick(Sender: TObject);
begin
  // Enable input fields and buttons

  edtNik.Clear;
  edtNama.Clear;
  edtTelp.Clear;
  edtEmail.Clear;
  edtAlamat.Clear;
  cbbMember.Clear;
end;

procedure TForm1.btnSimpanClick(Sender: TObject);
var
  Query: TSQLQuery;
begin
  // Create a new query to insert data into kustomer table
  Query := TSQLQuery.Create(nil);
  try
    Query.SQLConnection := DBConnection;
    Query.SQL.Add('INSERT INTO kustomer (nik, nama, telp, email, alamat, member)');
    Query.SQL.Add('VALUES (:nik, :nama, :telp, :email, :alamat, :member)');
    Query.ParamByName('nik').AsInteger := StrToInt(edtNik.Text);
    Query.ParamByName('nama').AsString := edtNama.Text;
    Query.ParamByName('telp').AsString := edtTelp.Text;
    Query.ParamByName('email').AsString := edtEmail.Text;
    Query.ParamByName('alamat').AsString := edtAlamat.Text;
    Query.ParamByName('member').AsString := cbbMember.Text;
    Query.ExecSQL;
    dbgrd1.Datasource.DataSet.Close;
    dbgrd1.Datasource.DataSet.Open;
    ShowMessage('Data berhasil disimpan!');
  finally
    Query.Free;
  end;
end;

procedure TForm1.btnEditClick(Sender: TObject);
var
  Query: TSQLQuery;
begin
  // Get the selected ID from the DBGrid
  if  dbgrd1.DataSource.DataSet.RecordCount > 0 then
  begin
    // Create a new query to retrieve the data
    Query := TSQLQuery.Create(nil);
    try
    Query.SQLConnection := DBConnection;
    Query.SQL.Add('SELECT * FROM kustomer WHERE id = :id');
    Query.ParamByName('id').AsInteger := StrToInt( dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
    Query.Open;
    edtNik.Text := Query.FieldByName('nik').AsString;
    edtNama.Text := Query.FieldByName('nama').AsString;
    edtTelp.Text := Query.FieldByName('telp').AsString;
    edtEmail.Text := Query.FieldByName('email').AsString;
    edtAlamat.Text := Query.FieldByName('alamat').AsString;
    cbbMember.Text := Query.FieldByName('member').AsString;

      // Set the button text to "Update"
      //btnEdit.Caption := 'EDIT';
    finally
      Query.Free;
    end;
  end
  else
  begin
    ShowMessage('Select a record to edit!');
  end;
end;

procedure TForm1.btnUpdateClick(Sender: TObject);
var Query: TSQLQuery;
  //NikValue: Integer;
begin
  // Check if EditNik contains a valid integer value
//  if TryStrToInt(edtNik.Text, NikValue) then
  //begin
  // Create a new query to update data in kustomer table
  Query := TSQLQuery.Create(nil);
  try
    Query.SQLConnection := DBConnection;
    Query.SQL.Add('UPDATE kustomer SET ');
    Query.SQL.Add('nik = :nik, ');
    Query.SQL.Add('nama = :nama, ');
    Query.SQL.Add('telp = :telp, ');
    Query.SQL.Add('email = :email, ');
    Query.SQL.Add('alamat = :alamat, ');
    Query.SQL.Add('member = :member ');
    Query.SQL.Add('WHERE id = :id');

    Query.ParamByName('nik').AsString := edtNik.Text;
    Query.ParamByName('nama').AsString := edtNama.Text;
    Query.ParamByName('telp').AsString := edtTelp.Text;
    Query.ParamByName('email').AsString := edtEmail.Text;
    Query.ParamByName('alamat').AsString := edtAlamat.Text;
    Query.ParamByName('member').AsString := cbbMember.Text;
    Query.ParamByName('id').AsInteger := StrToInt(dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
  //  Query.SQL.Add('UPDATE kustomer SET nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member');
   // Query.SQL.Add('WHERE id = :id');
    //Query.ParamByName('nik').AsInteger := StrToInt(edtNik.Text);
    //Query.ParamByName('nama').AsString := edtNama.Text;
    //Query.ParamByName('telp').AsString := edtTelp.Text;
    //Query.ParamByName('email').AsString := edtEmail.Text;
    //Query.ParamByName('alamat').AsString := edtAlamat.Text;
    //Query.ParamByName('member').AsString := cbbMember.Text;
    //Query.ParamByName('id').AsInteger := StrToInt(dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
    Query.ExecSQL;
    ShowMessage('Data berhasil diupdate!');
  finally
    Query.Free;
  end;
  //end
  //else
  //begin
    //NikValue := NikValue + 1;
    //ShowMessage('Entered value incremented by 1 equals to: ' + IntToStr(NikValue));
  //end;
end;

procedure TForm1.btnHapusClick(Sender: TObject);
var
  Query: TSQLQuery;
begin
  // Create a new query to delete data from kustomer table
  Query := TSQLQuery.Create(nil);
  try
    Query.SQLConnection := DBConnection;
    Query.SQL.Add('DELETE FROM kustomer WHERE id = :id');
    Query.ParamByName('id').AsInteger := StrToInt(dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
    Query.ExecSQL;
    ShowMessage('Data berhasil dihapus!');
  finally
    Query.Free;
  end;
end;

procedure TForm1.cbbMemberChange(Sender: TObject);
begin

  cbbMember.Items.Add('Yes');
  cbbMember.Items.Add('No');

 if cbbMember.Text = 'Yes' then
    lblDiskon.Caption := '10%'
 else if cbbMember.Text = 'No' then
    lblDiskon.Caption := '5%';
end;

procedure TForm1.btnEditUpdateClick(Sender: TObject);
var Query: TSQLQuery;
begin
           // Create a new query to update data in kustomer table
  Query := TSQLQuery.Create(nil);
  try
    Query.SQLConnection := DBConnection;
    Query.SQL.Add('UPDATE kustomer SET ');
    Query.SQL.Add('nik = :nik, ');
    Query.SQL.Add('nama = :nama, ');
    Query.SQL.Add('telp = :telp, ');
    Query.SQL.Add('email = :email, ');
    Query.SQL.Add('alamat = :alamat, ');
    Query.SQL.Add('member = :member ');
    Query.SQL.Add('WHERE id = :id');

    Query.ParamByName('nik').AsString := edtNik.Text;
    Query.ParamByName('nama').AsString := edtNama.Text;
    Query.ParamByName('telp').AsString := edtTelp.Text;
    Query.ParamByName('email').AsString := edtEmail.Text;
    Query.ParamByName('alamat').AsString := edtAlamat.Text;
    Query.ParamByName('member').AsString := cbbMember.Text;
    Query.ParamByName('id').AsInteger := StrToInt(dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
  //  Query.SQL.Add('UPDATE kustomer SET nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member');
   // Query.SQL.Add('WHERE id = :id');
    //Query.ParamByName('nik').AsInteger := StrToInt(edtNik.Text);
    //Query.ParamByName('nama').AsString := edtNama.Text;
    //Query.ParamByName('telp').AsString := edtTelp.Text;
    //Query.ParamByName('email').AsString := edtEmail.Text;
    //Query.ParamByName('alamat').AsString := edtAlamat.Text;
    //Query.ParamByName('member').AsString := cbbMember.Text;
    //Query.ParamByName('id').AsInteger := StrToInt(dbgrd1.DataSource.DataSet.FieldByName('id').AsString);
    Query.ExecSQL;
    dbgrd1.Datasource.DataSet.Close;
    dbgrd1.Datasource.DataSet.Open;
    ShowMessage('Data berhasil diupdate!');
  finally
    Query.Free;
  end;
end;


end.
