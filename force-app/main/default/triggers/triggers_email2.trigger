trigger triggers_email2 on contact (before insert,before update)
{
   if(Trigger.isInsert||Trigger.isUpdate)
      for(contact a:trigger.new)
     {
         if(a.Email== a.SecondaryEmail__c)
         {
             a.addError('it should not same');
         }
     }
}