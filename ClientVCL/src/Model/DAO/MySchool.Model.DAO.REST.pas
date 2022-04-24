unit MySchool.Model.DAO.REST;

interface

uses
  Data.DB,
  Vcl.Forms,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  RESTRequest4D,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  MySchool.Model.DAO.Interfaces;

type
  TDAOREST = class( TInterfacedObject, iDAOInterface )
    private
      FDMemTable : TFDMemTable;
      FBaseURL : String;
      FForm : TForm;
      FEndPoint : String;
      FPK : String;
      FSort : String;
      FOrder : String;
      FTitle : String;
      function PrepareGuuid( aValue : String) : String;
    public
      constructor Create(aForm : TForm);
      destructor Destroy; override;
      class function New(aForm : TForm) : iDAOInterface;
      function Get : iDAOInterface;
      function Post : iDAOInterface;
      function Put : iDAOInterface;
      function Delete : iDAOInterface;
      function DataSource ( aValue : TDataSource) : iDAOInterface;
      function DataSet : TDataSet;
  end;

implementation

uses
  System.SysUtils, System.JSON;

{ TDAOREST }

constructor TDAOREST.Create(aForm : TForm);
begin
   FDMemTable := TFDMemTable.Create(nil);
   FBaseURL := 'http://localhost:9000';
   FForm := aForm;

   TBind4D
      .New
         .Form(FForm)
         .BindFormRest(
           FEndPoint,
           FPK,
           FOrder,
           FSort );
end;

function TDAOREST.DataSet: TDataSet;
begin
   Result := FDMemTable;
end;

function TDAOREST.DataSource(aValue: TDataSource): iDAOInterface;
begin
   Result := Self;
   aValue.DataSet := FDMemTable;
end;

function TDAOREST.Delete: iDAOInterface;
begin
  Result := Self;

  TRequest
     .New
        .BaseURL(FBaseURL + FEndPoint + '/' + PrepareGuuid(FDMemTable.FieldByName(FPK).AsString))
        .Accept('application/json')
     .Delete;
end;

destructor TDAOREST.Destroy;
begin
  FDMemTable.Free;
  inherited;
end;

function TDAOREST.Get: iDAOInterface;
begin
  TRequest
    .New
      .BaseURL( FBaseURL + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable)
    .Get;
end;

class function TDAOREST.New(aForm : TForm) : iDAOInterface;
begin
  Result := Self.Create(aForm);
end;

function TDAOREST.Post: iDAOInterface;
var
   aJson : TJsonObject;
begin
  Result := Self;
  aJson := TBind4D.New.Form(FForm).FormToJson(fbPost);
  try
    TRequest
     .New
       .BaseURL(FBaseURL + FEndPoint)
       .Accept('application/json')
       .AddBody(aJson.ToString)
     .Post;
  finally
    aJson.Free;
  end;

end;

function TDAOREST.PrepareGuuid(aValue: String): String;
begin
  Result := StringReplace(aValue, '{', '', [rfReplaceAll]);
  Result := StringReplace(aValue, '}', '', [rfReplaceAll]);
end;

function TDAOREST.Put: iDAOInterface;
var
   aJson : TJsonObject;
begin
  Result := Self;
  aJson := TBind4D.New.Form(FForm).FormToJson(fbPut);
  try
    TRequest
     .New
       .BaseURL(FBaseURL + FEndPoint + '/' + PrepareGuuid(FDMemTable.FieldByName(FPK).AsString))
       .Accept('application/json')
       .AddBody(aJson.ToString)
     .Put;
  finally
    aJson.Free;
  end;
end;

end.
