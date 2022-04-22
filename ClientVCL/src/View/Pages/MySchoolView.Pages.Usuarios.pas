unit MySchoolView.Pages.Usuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  MySchoolView.Pages.Form.Template,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types, Vcl.Imaging.pngimage;

type
  [FormDefault('Cadastro de Usuários')]
  TPageUsuarios = class(TFormTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

end.
