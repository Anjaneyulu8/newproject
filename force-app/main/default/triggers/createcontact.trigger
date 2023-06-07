trigger createcontact on Account (before Update) {
    list<Contact> listofcontacts=new list<Contact>();
    if(trigger.isBefore && trigger.isInsert){
        for(Account newlist:trigger.new){
            contact con=new contact();
            newlist.Name=con.FirstName;
            newlist.Name=con.LastName;
            newlist.name='Mr.';
            listofcontacts.add(con);
            
        }
        
    }
    for(Account oldvalues:Trigger.old){
        System.debug('Oldvalues'+oldValues);
        }

}