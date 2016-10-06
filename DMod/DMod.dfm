object DataMod: TDataMod
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 680
  Width = 939
  object dbConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=\\bed' +
      'e-curr-fs01\users\01102999\Documents\Computing\A2\F454 (practica' +
      'l)\DEV\Win32\Debug\AssessmentDB.mdb;Mode=Share Deny None;Persist' +
      ' Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Regi' +
      'stry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Typ' +
      'e=5;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial B' +
      'ulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Dat' +
      'abase Password="";Jet OLEDB:Create System Database=False;Jet OLE' +
      'DB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact' +
      '=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:' +
      'SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 448
    Top = 16
  end
  object qryTeacherNames: TADOQuery
    Connection = dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblTeachers.StaffSurname + '#39',  '#39' + tblTeachers.StaffForen' +
        'ame'
      'AS StaffName'
      'FROM tblTeachers'
      'ORDER BY tblTeachers.StaffID;')
    Left = 432
    Top = 88
  end
  object qryLogon: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmSName'
        Size = -1
        Value = Null
      end
      item
        Name = 'pmPWord'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT tblTeachers.StaffSurname, tblTeachers.StaffPWord'
      'FROM tblTeachers'
      'WHERE tblTeachers.StaffSurname= :pmSName'
      'AND tblTeachers.StaffPWord= :pmPWord;')
    Left = 360
    Top = 88
  end
  object qryStudentNames: TADOQuery
    Connection = dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT tblStudent.Surname + '#39',  '#39' + tblStudent.Forename'
      'AS StudentName'
      'FROM tblStudent'
      'ORDER BY tblStudent.Surname ASC;')
    Left = 520
    Top = 88
  end
  object qryAssessmentNames: TADOQuery
    Connection = dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT tblAssessTasks.AssessName'
      'FROM tblAssessTasks'
      'ORDER BY AssessDate DESC;')
    Left = 624
    Top = 88
  end
  object qryEdStudent: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmESName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmEFName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tblStudent'
      'INNER JOIN tblTeachers'
      'ON tblTeachers.StaffID = tblStudent.StaffID'
      'WHERE tblStudent.Surname = :pmESName'
      'AND tblStudent.Forename = :pmEFName')
    Left = 296
    Top = 88
  end
  object qryEdAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmEAName'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tblAssessTasks'
      'WHERE tblAssessTasks.AssessName = :pmEAName')
    Left = 224
    Top = 88
  end
  object qryInsStudent: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmSName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmFName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmStaffID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmGCSE'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBase'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmTarg'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmStat'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmEthn'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmEmai'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBKSe'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBKSm'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmWU'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmLDS'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmLDd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO tblStudent (Surname, Forename, StaffID, GCSEAverage,' +
        ' Baseline, TargetGrade, Status, Ethnicity, EmailAddr, BKSBEnglis' +
        'h, BKSBMaths, WardUplift, [LDS/SEN], SENDetails)'
      
        'VALUES (:pmSName,:pmFName,:pmStaffID,:pmGCSE,:pmBase,:pmTarg,:pm' +
        'Stat,:pmEthn,:pmEmai,:pmBKSe,:pmBKSm,:pmWU,:pmLDS,:pmLDd);')
    Left = 152
    Top = 88
  end
  object qryUpdStudent: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmSName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmFName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmStaffID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmGCSE'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBase'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmTarg'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmStat'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmEthn'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmEmai'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBKSe'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmBKSm'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmWU'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmLDS'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmLDd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmSID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE tblStudent'
      
        'SET Surname=:pmSName, Forename=:pmFName, StaffID=:pmStaffID, GCS' +
        'EAverage=:pmGCSE, Baseline=:pmBase, TargetGrade=:pmTarg, Status=' +
        ':pmStat, Ethnicity=:pmEthn, EmailAddr=:pmEmai, BKSBEnglish=:pmBK' +
        'Se, BKSBMaths=:pmBKSm, WardUplift=:pmWU, [LDS/SEN]=:pmLDS, SENDe' +
        'tails=:pmLDd'
      'WHERE StudentID=:pmSID')
    Left = 72
    Top = 88
  end
  object qryAssessTypes: TADOQuery
    Connection = dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT AssessType'
      'FROM tblAssessTypes')
    Left = 720
    Top = 88
  end
  object qryUpdAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmAName'
        Size = -1
        Value = Null
      end
      item
        Name = 'pmAType'
        Size = -1
        Value = Null
      end
      item
        Name = 'pmADate'
        Size = -1
        Value = Null
      end
      item
        Name = 'pmAMarks'
        Size = -1
        Value = Null
      end
      item
        Name = 'pmAID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE tblAssessTasks'
      
        'SET AssessName=:pmAName, AssessType=:pmAType, AssessDate=:pmADat' +
        'e, TotalMarks=:pmAMarks'
      'WHERE AssessmentID=:pmAID')
    Left = 72
    Top = 144
  end
  object qryInsAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmAName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmAType'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmADate'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmAMarks'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO tblAssessTasks (AssessName, AssessType, AssessDate, ' +
        'TotalMarks) '
      'VALUES (:pmAName,:pmAType,:pmADate,:pmAMarks);')
    Left = 152
    Top = 144
  end
  object qryRemStudent: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmFName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmSName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM tblStudent'
      'WHERE Forename=:pmFName AND Surname=:pmSName')
    Left = 232
    Top = 144
  end
  object qryRemAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmAName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM tblAssessTasks'
      'WHERE AssessName=:pmAName')
    Left = 312
    Top = 144
  end
  object qryViewStudent: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblAssessTasks.AssessName, tblAssessTasks.AssessType, tbl' +
        'Assessment.RawMark, tblAssessTasks.TotalMarks, tblAssessment.Gra' +
        'de'
      'FROM tblAssessTasks'
      'INNER JOIN tblAssessment'
      'ON tblAssessTasks.AssessmentID=tblAssessment.AssessmentID'
      'WHERE tblAssessment.StudentID=:pmID')
    Left = 392
    Top = 144
  end
  object qryViewAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblStudent.Surname, tblStudent.Forename, tblStudent.Basel' +
        'ine, tblAssessment.RawMark, tblAssessment.Grade'
      'FROM tblAssessment'
      'INNER JOIN tblStudent'
      'ON tblAssessment.StudentID=tblStudent.StudentID'
      'WHERE tblAssessment.AssessmentID=:pmID')
    Left = 472
    Top = 144
  end
  object qryUpdStAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmSID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmAID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmRM'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmGrade'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmSIDD'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmAIDD'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE tblAssessment'
      
        'SET StudentID=:pmSID, AssessmentID=:pmAID, RawMark=:pmRM, Grade=' +
        ':pmGrade'
      'WHERE StudentID=:pmSIDD AND AssessmentID=:pmAIDD')
    Left = 632
    Top = 144
  end
  object qryStudentNameID: TADOQuery
    Connection = dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  tblStudent.StudentID, tblStudent.Surname + '#39',  '#39' + tblSt' +
        'udent.Forename'
      'AS StudentName'
      'FROM tblStudent'
      'ORDER BY tblStudent.Surname ASC;')
    Left = 72
    Top = 200
  end
  object qryAssessNameID: TADOQuery
    Connection = dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblAssessTasks.AssessmentID, tblAssessTasks.AssessName'
      'FROM tblAssessTasks'
      'ORDER BY AssessDate;')
    Left = 168
    Top = 200
  end
  object qryInsStAssess: TADOQuery
    Connection = dbConn
    Parameters = <
      item
        Name = 'pmSID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmAID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmRM'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pmGrade'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO tblAssessment(StudentID,AssessmentID,RawMark,Grade) '
      'VALUES (:pmSID,:pmAID,:pmRM,:pmGrade);')
    Left = 552
    Top = 144
  end
end
