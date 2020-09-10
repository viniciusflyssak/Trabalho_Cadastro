unit uFrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uFrmCadastrar;

type
  TFrmInicio = class(TForm)
    PCadastro: TPanel;
    BtCadastro: TButton;
    procedure BtCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;

implementation

{$R *.dfm}

procedure TFrmInicio.BtCadastroClick(Sender: TObject);
begin
  FrmCadastrar := TFrmCadastrar.Create(Nil);
  try
    FrmCadastrar.ShowModal;
  finally
    FreeAndNil(FrmCadastrar);
  end;
end;

end.
