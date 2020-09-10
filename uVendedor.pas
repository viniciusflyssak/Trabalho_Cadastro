unit uVendedor;

interface

uses
  uFuncionario;

type
  TVendedor = class(TFuncionario)
  private
    FComissao: Double;
    procedure setComissao(Value: Double);
  public
    property Comissao: Double read FComissao write setComissao;
  end;

implementation

{ Gestor }

procedure TVendedor.setComissao(Value: Double);
begin
  FComissao := Value;
end;

end.
