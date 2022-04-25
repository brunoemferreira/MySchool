unit MySchool.View.Main;

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
  MySchool.View.Styles.Colors,
  Vcl.Buttons, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList;

type
  TformPrincipal = class(TForm)
    pnlMain: TPanel;
    pnlMenu: TPanel;
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlLogo: TPanel;
    Image1: TImage;
    btnCourses: TImage;
    btnExit: TImage;
    btnClass: TImage;
    btnSubjects: TImage;
    btnYears: TImage;
    btnStudents: TImage;
    btnUsers: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnUsersClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    procedure ApplyStyle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses Router4D, MySchoolView.Pages.Principal;

{$R *.dfm}

procedure TformPrincipal.btnUsersClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  ApplyStyle;
  TRouter4D.Render<TPagePrincipal>.SetElement(pnlPrincipal, pnlMain);
end;

procedure TformPrincipal.Image1Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TformPrincipal.ApplyStyle;
begin
  pnlPrincipal.Color := STYLE_COLOR_BACKGROUND;
 // pnlTop.Color := STYLE_COLOR_BACKGROUND_TOP;
 // pnlTop.Color := STYLE_COLOR_LIGHT_GRAY;
  pnlTop.Color := STYLE_COLOR_BACKGROUND_MENU;
  pnlLogo.Color := STYLE_COLOR_BACKGROUND_DESTAK;
  pnlMenu.Color := STYLE_COLOR_BACKGROUND_MENU;
  Self.Font.Color := STYLE_FONT_COLOR;
  self.Font.Size := FONT_H6;
end;

end.
