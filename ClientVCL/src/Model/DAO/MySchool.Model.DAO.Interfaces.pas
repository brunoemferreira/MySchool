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
   End;

   implementation

end.
