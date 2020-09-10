unit uFrmCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.UITypes,
  uFuncionario, uGestor, uVendedor;

type
  TFrmCadastrar = class(TForm)
    BtGravar: TButton;
    PCadastro: TPanel;
    LNome: TLabel;
    LCPF: TLabel;
    LSalario: TLabel;
    LCargo: TLabel;
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtSalario: TEdit;
    CBCargo: TComboBox;
    EdtExtra: TEdit;
    Lextra: TLabel;
    procedure BtGravarClick(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtCPFExit(Sender: TObject);
    procedure EdtSalarioExit(Sender: TObject);
    procedure EdtExtraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Funcionarios: array [1 .. 100] of TFuncionario;
  Funcionario: TFuncionario;
  Gestor: TGestor;
  Vendedor: Tvendedor;
  FrmCadastrar: TFrmCadastrar;
  Contador: Integer = 1;

implementation

{$R *.dfm}

procedure TFrmCadastrar.BtGravarClick(Sender: TObject);

begin
  try
    Funcionario := TFuncionario.Create;
    Gestor := TGestor.Create;
    Vendedor := Tvendedor.Create;
    Funcionario.Nome := EdtNome.Text;
    Funcionario.Cpf := EdtCPF.Text;
    Funcionario.Salario := StrToFloat(EdtSalario.Text);
    Funcionario.Cargo := CBCargo.Text;
    if Funcionario.Cargo = 'Gestor' then
      Gestor.HoraExtra := StrToInt(EdtExtra.Text)
    else
      Vendedor.Comissao := StrToFloat(EdtExtra.Text);
    if Funcionario.Cargo = 'Gestor' then
      Funcionario.Ganho := Funcionario.Salario + (Gestor.HoraExtra * 25)
    else
      Funcionario.Ganho := Funcionario.Salario + (Vendedor.Comissao * 0.15);
    Funcionarios[Contador] := Funcionario;
    Contador := Contador + 1;
    if Funcionario.Cargo = '' then
      ShowMessage('Cargo inválido!')
    else
      ShowMessage('Total ganho: ' + FloatToStr(Funcionario.Ganho) + ' R$');
  finally
    Gestor.Free;
    Vendedor.Free;
  end;
end;

procedure TFrmCadastrar.EdtCPFExit(Sender: TObject);
begin
  if EdtCPF.Text = '' then
    MessageDlg('CPF obrigatório!', mtError, [mbOk], 0);
end;

procedure TFrmCadastrar.EdtExtraExit(Sender: TObject);
begin
  if EdtExtra.Text = '' then
    MessageDlg
      ('Horas extras ou valor vendido obrigatório! (Caso não tenha realizado, coloque "0")',
      mtError, [mbOk], 0);
end;

procedure TFrmCadastrar.EdtNomeExit(Sender: TObject);
begin
  if EdtNome.Text = '' then
    MessageDlg('Nome obrigatório!', mtError, [mbOk], 0);
end;

procedure TFrmCadastrar.EdtSalarioExit(Sender: TObject);
begin
  if EdtSalario.Text = '' then
    MessageDlg('Salário obrigatório!', mtError, [mbOk], 0);
end;

end.
