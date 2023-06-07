public  class hotel {
@AuraEnabled(cacheable=true)
  public static List<String>getcity()
  {
      List<String> cityList = new List<String>();
      List<City__c> cl = [Select Name from City__c];
      For(City__c ec : cl){
         cityList.add(ec.Name);
      }
      return cityList;
  }



@AuraEnabled(cacheable=true)
  public static List<String>hotellist()
  {
      List<String> hotellist = new List<String>();
      List<Hotel__c> cl = [Select Name from Hotel__c];
      For(Hotel__c ec : cl){
         hotellist.add(ec.Name);
      }
      return hotellist;
  }


}