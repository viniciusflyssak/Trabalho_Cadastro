unit uFuncionario;

interface

type
  Tfuncionario = class
  Private
    FNome: String;
    FCpf: String;
    FSalario: Double;
    FCargo: String;
    FGanho: Double;
    procedure setNome(Value: String);
    procedure setCpf(Value: String);
    procedure setSalario(Value: Double);
    procedure setCargo(Value: String);
    procedure setGanho(Value: Double);
  Public
    Property Nome: String read FNome write setNome;
    Property Cpf: String read FCpf write setCpf;
    Property Salario: Double read FSalario write setSalario;
    Property Cargo: String read FCargo write setCargo;
    Property Ganho: Double read FGanho write setGanho;
  end;

implementation

{ funcionario }

procedure Tfuncionario.setCargo(Value: String);
begin
  FCargo := Value;
end;

procedure Tfuncionario.setCpf(Value: String);
begin
  FCpf := Value;
end;

procedure Tfuncionario.setGanho(Value: Double);
begin
  FGanho := Value;
end;

procedure Tfuncionario.setNome(Value: String);
begin
  FNome := Value;
end;

procedure Tfuncionario.setSalario(Value: Double);
begin
  FSalario := Value;
end;

end.
