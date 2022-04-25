unit MySchool.Model.Services.Register;

interface

type
  TModelServicesRegister = class
    private
      procedure RegisterAWS;
      procedure RegisterGoogleAPI;
    public
      constructor Create;
      destructor Destroy; override;
  end;

var
  aServicesRegister : TModelServicesRegister;

implementation

{ TModelServicesRegister }

uses
  Bind4D;

constructor TModelServicesRegister.Create;
begin
   RegisterAWS;
   RegisterGoogleAPI;
end;

destructor TModelServicesRegister.Destroy;
begin

  inherited;
end;

procedure TModelServicesRegister.RegisterAWS;
begin
   TBind4D
     .New
       .AWSService
         .Credential
           .AccountKey('')
           .AccountName('')
           .StorageEndPoint('')
           .Bucket('')
         .&End;
end;

procedure TModelServicesRegister.RegisterGoogleAPI;
begin
    TBind4D
     .New
       .Translator
         .Google
           .Credential
             .Key('')
           .&End
           .Options
             .Cache(True)
           .&End
           .Params
             .Source('pt')
             .Target('en')
           .&End;
end;

initialization
   aServicesRegister :=  TModelServicesRegister.Create;

finalization
   aServicesRegister.Free;

end.
