program Project;

uses
  Vcl.Forms,
  uFrmCadastro in 'uFrmCadastro.pas' {FrmInicio} ,
  uFuncionario in 'uFuncionario.pas',
  uVendedor in 'uVendedor.pas',
  uGestor in 'uGestor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmInicio, FrmInicio);
  Application.Run;

end.
