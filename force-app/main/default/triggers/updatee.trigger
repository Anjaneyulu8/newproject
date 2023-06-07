trigger updatee on Contact (before update)
{
Contact c=Trigger.old[0];
for(Contact con: Trigger.new)
{
if(con.FirstName != Null)
{

if(con.FirstName !=c.FirstName )
{
con.addError('The first name cannot be edited');
}
}
}

}