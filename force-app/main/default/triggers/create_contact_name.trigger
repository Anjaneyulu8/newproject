trigger  create_contact_name on Account (After insert) {
    list<contact> Clist= new list<contact>();

    for(Account A:Trigger.new)
    {
       contact c = new contact();
        c.LastName=A.Name;
        c.Phone=A.Phone;
        c.AccountId=A.Id;
        Clist.add(c);
    }
    insert Clist;
}