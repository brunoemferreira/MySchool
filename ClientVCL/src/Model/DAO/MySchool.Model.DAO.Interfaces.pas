unit MySchool.Model.DAO.Interfaces;

interface

uses
  Data.DB;

type

   iDAOInterface = Interface
      ['{7C42A7C8-1A30-45F0-8C0D-CB31BF9C226A}']
      function Get : iDAOInterface;
      function Post : iDAOInterface;
      function Put : iDAOInterface;
      function Delete : iDAOInterface;
      function DataSource ( aValue : TDataSource) : iDAOInterface;
      function DataSet : TDataSet;
      function AddParam ( akey: String; aValue : String ) : iDAOInterface;
      function Page : Integer; overload;
      function Page ( aValue: Integer) : iDAOInterface; overload;
      function Limit : Integer ; overload;
      function Limit ( aValue: Integer) : iDAOInterface; overload;
      function Total ( aValue: Integer) : iDAOInterface; overload;
      function Total : Integer ; overload;
      function Pages ( aValue: Integer) : iDAOInterface; overload;
      function Pages : Integer ; overload;
   End;

   implementation

end.
