trigger ContactAdd on Account (after insert , after update)
{
    for(Account a:trigger.new){
      list<contact> con=[select  MailingState from contact where Accountid=:a.id];
        for(contact var:con){
        
          var.MailingState=a.BillingState;
        }
        update con;
    }    
    }