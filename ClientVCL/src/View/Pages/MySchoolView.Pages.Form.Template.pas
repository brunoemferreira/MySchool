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
    Image1: TImage;

    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;

    [AdjustResponsive]
    [ComponentBindStyle( STYLE_COLOR_BACKGROUND, FONT_H6, STYLE_FONT_COLOR4, FONT_NAME )]
    dbGridContent: TDBGrid;

    [ImageAttribute('btn_Insert2')]
    btnInsert: TSpeedButton;

  //  [ImageAttribute('btn_save')]
    btnSave: TSpeedButton;

   // [ImageAttribute('btn_update')]
    btnRefresh: TSpeedButton;

   // [ImageAttribute('btn_delete')]
    btnDelete: TSpeedButton;

    pnlContentRightButtons: TPanel;
    btnClose: TSpeedButton;

    DataSource1: TDataSource;

    pnlContentLeft: TPanel;
    pnContentLeftBottom: TPanel;
    btnPrevious: TSpeedButton;
    lbPagination: TLabel;
    btnNext: TSpeedButton;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;

    procedure FormCreate(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure dbGridContentDblClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dbGridContentTitleClick(Column: TColumn);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    FTypeOperation : TTypeOperation;
    FEndPoint : String;
    FPK : String;
    FSort : String;
    FOrder : String;
    FTitle : String;
    FDAO : iDAOInterface;
    FPage : Integer;
    procedure ApplyStyle;
    procedure GetEndPoint;
    procedure alterListForm;
    procedure formatList;
    procedure restOperationPost;
    procedure restOperationPut;
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
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnDeleteClick(Sender: TObject);
begin
  FDAO.Delete;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnInsertClick(Sender: TObject);
begin
  FTypeOperation := toPost;
  alterListForm;
  TBind4D.New.Form(Self).ClearFieldForm;
end;

procedure TFormTemplate.btnRefreshClick(Sender: TObject);
begin
  GetEndPoint;
end;

procedure TFormTemplate.btnSaveClick(Sender: TObject);
begin
  case FTypeOperation of
     toPost : restOperationPost;
     toPut :  restOperationPut;
  end;

end;

procedure TFormTemplate.dbGridContentDblClick(Sender: TObject);
begin
  FTypeOperation := toPut;
  TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
  alterListForm;
end;

procedure TFormTemplate.dbGridContentTitleClick(Column: TColumn);
begin
  FDAO
    .AddParam('sort', Column.Field.FullName)
    .AddParam('order', FOrder)
    .Page(1)
  .Get;
  if FOrder = 'asc' then FOrder := 'desc' else FOrder := 'asc';
  formatList;
end;

procedure TFormTemplate.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
  begin
  Key := #$0;
    FDAO
      .AddParam('sort', FSort)
      .AddParam('order', FOrder)
      .AddParam('searchfields', TBind4D.New.Form(Self).GetFieldsByType(fbGet))
      .AddParam('searchvalue', edtSearch.Text)
      .Page(1)
    .Get;

    formatList;
  end;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  FPage := 1;
  FTypeOperation := toNull;

  FDAO := TDAOREST.New(Self).DataSource(DataSource1);

  TBind4D
     .New
       .Form(Self)
       .BindFormDefault(FTitle)
       .BindFormRest(FEndPoint, FPK, FSort, FOrder)
       .SetCaptionComponents
       .SetImageComponents
       .SetStyleComponents;

  ApplyStyle;
  GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
  FDAO
     .AddParam('sort', FSort)
     .AddParam('order', FOrder)
     .Page(FPage)
  .Get;
  formatList;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.restOperationPost;
begin
  FDAO.Post;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.restOperationPut;
begin
  FDAO.Put;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.SpeedButton4Click(Sender: TObject);
begin
  edtSearch.Text := '';
  GetEndPoint;
end;

procedure TFormTemplate.btnNextClick(Sender: TObject);
begin
  if FDAO.Page < FDAO.Pages then
  begin
    FPage := FDAO.Page + 1;
    GetEndPoint;
  end;
end;

procedure TFormTemplate.btnPreviousClick(Sender: TObject);
begin
  if FDAO.Page > 1 then
  begin
    FPage := FDAO.Page -1;
    GetEndPoint;
  end;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

procedure TFormTemplate.formatList;
begin
  TBind4D.New.Form(Self).BindFormatListDataSet(FDAO.DataSet, dbGridContent).ResponsiveAdjustment;
  lbPagination.Caption := 'Página ' + FDAO.Page.ToString + ' de ' + FDAO.Pages.ToString;
end;

procedure TFormTemplate.alterListForm;
begin
  pnlContentRight.Visible := not pnlContentRight.Visible;
  pnlContentLeft.Visible  := not pnlContentLeft.Visible;
end;

end.
