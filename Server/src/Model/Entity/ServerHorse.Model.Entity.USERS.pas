unit ServerHorse.Model.Entity.USERS;

interface

uses
  SimpleAttributes;

type
  [Tabela('Users')]
  TUsers = class
  private
    FNAME : String;
    FCARGO : String;
    FPHONE : String;
    FGUUID : String;
    FCPF : String;
    FPICTURE: string;
    procedure SetNAME (const Value :String);
    function GetNAME :String;
    procedure SetCARGO (const Value :String);
    function GetCARGO : String;
    procedure SetPHONE (const Value :String);
    function GetPHONE :String;
    procedure SetGUUID(const Value: String);
    procedure SetCPF(const Value: String);
    function GetGUUID: String;
    procedure SetPICTURE(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('GUUID'), Pk]
    property GUUID : String read GetGUUID write SetGUUID;
    [Campo('CARGO')]
    property CARGO : String read GetCARGO write SetCARGO;
    [Campo('NAME')]
    property NAME :String read GetNAME write SetNAME;
    [Campo('PHONE')]
    property PHONE :String read GetPHONE write SetPHONE;
    [Campo('CPF')]
    property CPF : String read FCPF write SetCPF;
    [Campo('PICTURE')]
    property PICTURE : string read FPICTURE write SetPICTURE;
end;

implementation

uses
  System.SysUtils;

constructor TUsers.Create;
begin

end;

destructor TUsers.Destroy;
begin

  inherited;
end;

procedure TUsers.SetGUUID(const Value: String);
begin
  FGUUID := Value;
end;

procedure TUsers.SetCARGO(const Value: String);
begin
  FCARGO := Value;
end;

procedure TUsers.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TUsers.SetNAME (const Value :String);
begin
  FNAME := Value;
end;

function TUsers.GetCARGO: String;
begin
  Result := FCARGO;
end;

function TUsers.GetGUUID: String;
begin
  Result := FGUUID;
end;

function TUsers.GetNAME :String;
begin
  Result := FNAME;
end;

procedure TUsers.SetPHONE (const Value :String);
begin
  FPHONE := Value;
end;

procedure TUsers.SetPICTURE(const Value: string);
begin
  FPICTURE := Value;
end;

function TUsers.GetPHONE :String;
begin
  Result := FPHONE;
end;

end.
