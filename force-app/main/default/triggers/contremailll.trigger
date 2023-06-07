trigger contremailll on Contact (before insert) 
{
  public  list<interaction__c> recc=new list<interaction__c>();
  final String errMsg = 'The email already exists on another Contact: ';
  Set< String > emailSet = new Set< String >();
  for( Contact c : Trigger.new ) emailSet.add( c.Email );

  Map< String, Id > duplicateContactMap = new Map< String, Id >();

    
  for( Contact c : [select Id, Email from Contact where Email = :emailSet] )
    duplicateContactMap.put( c.Email, c.Id );

  for( Contact c : Trigger.new ){
    Id duplicateContactId = duplicateContactMap.get( c.Email );
    if( duplicateContactId != null )
      c.addError( errMsg + duplicateContactId );
       interaction__c li=new interaction__c();
      li.Name='hloo';
       database.insert(li);
      aschnrocousmethod.handlermethod(duplicateContactId);
      System.debug('hii'+li);
     
  }
}