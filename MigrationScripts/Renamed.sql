{
  "Script": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = 'Person' AND TABLE_NAME = 'Address')\r\nBEGIN\r\n        SET @ShouldRunMigrationScript = 0;\r\n        PRINT 'Object ''[Person].[Address]'' could not be found - skipping migration.';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename '[Person].[Address]', 'Address.Renamed'\r\nEND",
  "Name": "Renamed",
  "Commited": true,
  "UniqueId": "4d839dcc-d2c5-465c-b6eb-f6aeab584b6d",
  "Time": "2016-05-05T09:38:58",
  "OrderOfExecution": 0,
  "Description": "Renamed",
  "FullyQualifiedName": "Person.Address.Renamed",
  "OldFullyQualifiedName": "Person.Address",
  "SqlObjType": 8
}
