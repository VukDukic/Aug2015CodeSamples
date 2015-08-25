// Check to see if person accounts are enabled.
public Boolean personAccountsEnabled()
{
// Describe the Account object to get a map of all fields
// then check to see if the map contains the field 'isPersonAccount'
return Schema.sObjectType.Account.fields.getMap().containsKey( 'isPersonAccount' );
}
