public class MainClass {
public static void methodtest(List<Student__c> Stu) {
         List<WrapperClass> wrapperList = new List<WrapperClass>();
        for(Student__c st:stu){
            WrapperClass wrapperList1 = new WrapperClass();	
        wrapperList1.name=st.First_Name__c;
         wrapperList1.phone=st.Phone_no__c;
         wrapperList1.dob= string.valueOf( st.DOB__c);
            wrapperList.add(wrapperList1);
        }
        System.debug('>>>>'+wrapperList.size());
    System.debug('>>>>'+ wrapperList);
    }
	 class WrapperClass {
		public string name ;
	public String phone;
	public String dob;
    }
}