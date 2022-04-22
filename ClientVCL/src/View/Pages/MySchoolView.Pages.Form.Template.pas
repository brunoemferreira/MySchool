unit MySchoolView.Pages.Form.Template;

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
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids;


type
  TFormTemplate = class(TForm, iRouter4DComponent)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlButtonsTop: TPanel;
    ImageList1: TImageList;
    pnlMain: TPanel;
    pnlContent: TPanel;
    pnlContentTop: TPanel;
    pnlButtonsTopContainer: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    ImageList2: TImageList;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    lbSearch: TLabel;
    pnlButtons: TPanel;
    btnInsert: TSpeedButton;
    btnRefresh: TSpeedButton;
    pnlContentIntern: TPanel;
    pnlContentRight: TPanel;
    dbGridContent: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEndPoint : String;
    FPK : String;
    FTitle : String;
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation

uses
  MySchool.View.Styles.Colors;

{$R *.dfm}

procedure TFormTemplate.ApplyStyle;
begin
  Label1.Caption := FTitle;
  pnlContentRight.Visible := False;

  pnlPrincipal.Color := STYLE_COLOR_BACKGROUND;
  pnlTop.Color  := STYLE_COLOR_C1;
  pnlMain.Color := STYLE_COLOR_BACKGROUND;
  pnlButtonsTop.Color := STYLE_COLOR_C1;
  pnlContent.Color := STYLE_COLOR_BACKGROUND;
  pnlContentTop.Color := STYLE_COLOR_BACKGROUND;
 // pnlContentTopLineBottom.Color := STYLE_COLOR_C2;
  pnlSearch.Color  := STYLE_COLOR_BACKGROUND;
  pnlButtons.Color := STYLE_COLOR_BACKGROUND;
  pnlContentIntern.Color := STYLE_COLOR_BACKGROUND;
  pnlContentRight.Color := STYLE_COLOR_BACKGROUND;

  Label1.Font.Size  := FONT_H5;
  Label1.Font.Color := STYLE_FONT_COLOR3;
  Label1.Font.Name  := 'Segoe UI';

  dbGridContent.Font.Size := FONT_H5;
  dbGridContent.Font.Color := STYLE_FONT_COLOR4;
  dbGridContent.Font.Name := 'Segoe UI';
  dbGridContent.TitleFont.Size  := FONT_H5;
  dbGridContent.TitleFont.Name  := 'Segoe UI';
  dbGridContent.TitleFont.Color := STYLE_FONT_COLOR4 ;

end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  TBind4D.New.Form(Self).BindFormDefault(FTitle);
  ApplyStyle;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

end.
