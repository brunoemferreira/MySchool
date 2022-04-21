program MySchool;

uses
  Vcl.Forms,
  MySchool.View.Main in 'src\View\MySchool.View.Main.pas' {formPrincipal},
  MySchool.View.Styles.Colors in 'src\View\Styles\MySchool.View.Styles.Colors.pas',
  MySchoolView.Pages.Principal in 'src\View\Pages\MySchoolView.Pages.Principal.pas' {PagePrincipal},
  MySchoolView.Pages.Usuarios in 'src\View\Pages\MySchoolView.Pages.Usuarios.pas' {PageUsuarios},
  MySchool.View.Routers in 'src\View\Routers\MySchool.View.Routers.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
