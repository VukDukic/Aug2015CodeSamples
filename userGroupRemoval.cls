global class userGroupRemoval implements Database.Batchable<sObject> {
String query = 'Select Id from user where isActive = true';
global Database.QueryLocator start(Database.BatchableContext BC) {
return Database.getQueryLocator(query);
}
global void execute(Database.BatchableContext BC, List<sObject> scope) {
List<user> userRecord = (List<user>)scope;
List<GroupMember> duplicateGroupId = new List<GroupMember>();
Set<Id> userId = new Set<Id>();
for(GroupMember gpm : [Select Id,userorGroupId from GroupMember where userorGroupId IN:userRecord]){
if(userId.contains(gpm.userorGroupId)){
duplicateGroupId.add(gpm);
}
userId.add(gpm.userorGroupId);
}
if(duplicateGroupId.size() > 0)
delete duplicateGroupId;
}
global void finish(Database.BatchableContext BC) {
}
}
