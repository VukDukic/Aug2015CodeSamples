// to turn ON the Assignment Rules in Apex
Database.DMLOptions dmlOptn = new Database.DMLOptions();
dmlOptn.assignmentRuleHeader.useDefaultRule = true;
leadObj.setOptions(dmlOptn);
