program MySchool;



{$R *.dres}

uses
  Vcl.Forms,
  MySchool.View.Main in 'src\View\MySchool.View.Main.pas' {formPrincipal},
  MySchool.View.Styles.Colors in 'src\View\Styles\MySchool.View.Styles.Colors.pas',
  MySchoolView.Pages.Principal in 'src\View\Pages\MySchoolView.Pages.Principal.pas' {PagePrincipal},
  MySchool.View.Routers in 'src\View\Routers\MySchool.View.Routers.pas',
  MySchoolView.Pages.Form.Template in 'src\View\Pages\MySchoolView.Pages.Form.Template.pas' {FormTemplate},
  MySchool.View.Pages.Usuarios in 'src\View\Pages\MySchool.View.Pages.Usuarios.pas' {PageUsuarios},
  MySchool.Model.DAO.Interfaces in 'src\Model\DAO\MySchool.Model.DAO.Interfaces.pas',
  MySchool.Model.DAO.REST in 'src\Model\DAO\MySchool.Model.DAO.REST.pas',
  MySchool.Model.Services.Register in 'src\Model\Services\MySchool.Model.Services.Register.pas',
  MySchool.View.Reports.Template in 'src\View\Reports\MySchool.View.Reports.Template.pas' {RelTemplate};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
