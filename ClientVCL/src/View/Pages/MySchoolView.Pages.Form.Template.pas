unit MySchoolView.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.JSON,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Router4D.Interfaces,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  RESTRequest4D,
  MySchool.View.Styles.Colors,
  MySchool.Model.DAO.Interfaces,
  MySchool.Model.DAO.REST;

type
  TTypeOperation = (toNull, toPost, toPut);

  TFormTemplate = class(TForm, iRouter4DComponent)

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlPrincipal: TPanel;

    [ComponentBindStyle( STYLE_COLOR_C1, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlTop: TPanel;

    [ComponentBindStyle( STYLE_COLOR_C1, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlButtonsTop: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlMain: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlContent: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlContentTop: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlSearch: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlButtons: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlContentIntern: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H5, STYLE_FONT_COLOR3, FONT_NAME )]
    pnlContentRight: TPanel;

    pnlButtonsTopContainer: TPanel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H6, STYLE_COLOR_BACKGROUND_TOP, FONT_NAME )]
    lbTitle: TLabel;

    lbSearch: TLabel;

    Label2: TLabel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H8, STYLE_FONT_COLOR3, FONT_NAME )]
    edtSearch: TEdit;

    ImageList1: TImageList;
    ImageList2: TImageList;
    Image1: TImage;

    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;

    btnInsert: TSpeedButton;
    btnRefresh: TSpeedButton;

    Bevel1: TBevel;

    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H6, STYLE_FONT_COLOR4, FONT_NAME )]
    dbGridContent: TDBGrid;

    pnlContentRightButtons: TPanel;
    btnClose: TSpeedButton;
    btnSave: TSpeedButton;
    DataSource1: TDataSource;
    btnDelete: TSpeedButton;

    procedure FormCreate(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbGridContentDblClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FTypeOperation : TTypeOperation;
    FEndPoint : String;
    FPK : String;
    FSort : String;
    FOrder : String;
    FTitle : String;
    FDAO : iDAOInterface;
    procedure ApplyStyle;
    procedure GetEndPoint;
    procedure alterListForm;
    procedure formatList;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation

{$R *.dfm}

procedure TFormTemplate.ApplyStyle;
begin
  lbTitle.Caption := FTitle;
  pnlContentRight.Visible := False;
  pnlContentRight.Align := TAlign.alClient;

  dbGridContent.TitleFont.Size  := FONT_H7;
  dbGridContent.TitleFont.Name  := 'Segoe UI';
  dbGridContent.TitleFont.Color := STYLE_FONT_COLOR4 ;
end;

procedure TFormTemplate.btnCloseClick(Sender: TObject);
begin
  alterListForm;
end;

procedure TFormTemplate.btnDeleteClick(Sender: TObject);
begin
 FDAO.Delete;
end;

procedure TFormTemplate.btnInsertClick(Sender: TObject);
begin
  alterListForm;
  TBind4D.New.Form(Self).ClearFieldForm;
end;

procedure TFormTemplate.btnRefreshClick(Sender: TObject);
begin
  GetEndPoint;
end;

procedure TFormTemplate.btnSaveClick(Sender: TObject);
var
  aJson : TJsonObject;
begin
  aJson := TBind4D.New.Form(Self).FormToJson(fbPost);
  try
    TRequest
    .New
      .BaseURL('http://localhost:9000'+ FEndPoint)
      .Accept('application/json')
      .AddBody(aJson.ToString)
    .Post;
  finally
    aJson.Free;
  end;

  alterListForm;
  GetEndPoint;
end;

procedure TFormTemplate.dbGridContentDblClick(Sender: TObject);
begin
  TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
  alterListForm;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  FTypeOperation := toNull;

  FDAO := TDAOREST.New(Self).DataSource(DataSource1);

  TBind4D
     .New
       .Form(Self)
       .BindFormDefault(FTitle)
       .BindFormRest(FEndPoint, FPK, FSort, FOrder)
       .SetStyleComponents;

  ApplyStyle;

end;

procedure TFormTemplate.FormResize(Sender: TObject);
begin
  GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
  FDAO.Get;
  formatList;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

procedure TFormTemplate.formatList;
begin
  TBind4D.New.Form(Self).BindFormatListDataSet(FDAO.DataSet, dbGridContent);
end;

procedure TFormTemplate.alterListForm;
begin
  pnlContentRight.Visible := not pnlContentRight.Visible;
  dbGridContent.Visible := not dbGridContent.Visible;
end;

end.
