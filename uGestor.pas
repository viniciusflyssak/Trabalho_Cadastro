unit uGestor;

interface

uses
  uFuncionario;

type
  TGestor = class(TFuncionario)
  private
    FHoraExtra: Integer;
    procedure setHora(Value: Integer);
  public
    property HoraExtra: Integer read FHoraExtra write setHora;
  end;

implementation

{ Gestor }

procedure TGestor.setHora(Value: Integer);
begin
  FHoraExtra := Value;
end;

end.
