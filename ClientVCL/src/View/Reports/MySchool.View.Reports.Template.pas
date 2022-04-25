unit MySchool.View.Reports.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, Vcl.Imaging.pngimage;

type
  TRelTemplate = class(TForm)
    RLReport1: TRLReport;
    BandHeader: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLMemo1: TRLMemo;
    RLImage1: TRLImage;
    BandFooter: TRLBand;
    RLLabel3: TRLLabel;
    BandTitle: TRLBand;
    dsTemplate: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelTemplate: TRelTemplate;

implementation

{$R *.dfm}

end.
