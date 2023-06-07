trigger checkEmailTrigger on Lead (before insert) {

   final String errMsg = 'The email already exists on another Lead: ';
  Set< String > emailSet = new Set< String >();
    for( Lead l : Trigger.new ){
        emailSet.add( l.Email );
    }
  Map< String, Id > duplicateLeadMap = new Map< String, Id >();

  for( Lead L : [select Id, Email from Lead where Email = :emailSet] )
    duplicateLeadMap.put( L.Email, L.Id );

  for( Lead L : Trigger.new ){
//Id duplicateContactId = duplicateLeadMap.get( l.Email );
   // if( duplicateContactId != null )
     // L.addError( errMsg + duplicateLeadMap );
     
      List<Lead> ll=[SELECT Id,Email,Industry,Company FROM Lead WHERE Email=:l.Email];
         if(ll.size()>0  && l.leadsource=='WEB'){
         interaction__c ii = new  interaction__c();
         ii.lead__c=l.Id;
         ii.email__c=l.email;

          insert ii;
          }
  }
}