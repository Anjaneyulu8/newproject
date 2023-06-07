public class deactiveusers {

    
    public void method1(){
           List <User> queryu = [Select ID, IsActive From User WHERE IsActive = TRUE  Limit 200];
List <User> User2Update = new List<User>();
    if(!queryu.isEmpty())
{
  for (User u : queryu){
      u.IsActive= FALSE;
        User2Update.add(u);
  }
    Update User2Update;
}
    }
}