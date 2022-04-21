unit MySchoolView.Pages.Principal;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPagePrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PagePrincipal: TPagePrincipal;

implementation

uses
 MySchool.View.Styles.Colors;
{$R *.dfm}

{ TPagePrincipal }

procedure TPagePrincipal.FormCreate(Sender: TObject);
begin
  Panel1.Color := STYLE_COLOR_BACKGROUND;
end;

function TPagePrincipal.Render: TForm;
begin
  Result := Self;
end;

procedure TPagePrincipal.UnRender;
begin

end;

end.
