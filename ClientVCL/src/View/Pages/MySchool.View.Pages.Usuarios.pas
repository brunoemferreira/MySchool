unit MySchool.View.Pages.Usuarios;

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
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  RESTRequest4D,
  Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXPanels,
  MySchool.View.Styles.Colors,
  Vcl.ComCtrls;

type
    [FormRest('/users','guuid','name','asc')]
    [FormDefault('Cadastro de Usuários')]
    TPageUsuarios = class(TFormTemplate)
    PageControl1: TPageControl;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    lblCodigo: TLabel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    lblName: TLabel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    lblCPF: TLabel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    lblPhone: TLabel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    lblCargo: TLabel;

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, False, 0, 'Código')]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    edtCodigo: TEdit;

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, True, 50, 'Nome')]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    [fvNotNull('O Campo Nome não pode ser vazio!', STYLE_DANGER )]
    edtName: TEdit;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, True, 14, 'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME, teCPF )]
    edtCPF: TEdit;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, True, 14, 'Telefone', '!\(##\) #####-####;0;_')]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME, teCell )]
    edtPhone: TEdit;

    [FieldJsonBind('cargo')]
    [FieldDataSetBind('cargo', ftString, True, 35, 'Cargo')]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    [fvNotNull('O Campo Cargo não pode ser vazio!', STYLE_DANGER )]
    edtCargo: TEdit;

    [FieldJsonBind('picture')]
    [FieldDataSetBind('picture', ftString, False)]
    Image2: TImage;

    TabSheet1: TTabSheet;
    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;
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
