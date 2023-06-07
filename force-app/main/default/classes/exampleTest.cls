@IsTest
public class exampleTest {
@IsTest
public static void accountValueTest()
{
example e1=new example();
e1.accountIndustry = 'Agriculture';
e1.accountValue();
system.assertEquals('Hot', e1.AccountRating);

e1.accountIndustry = ' ';
e1.accountValue();
system.assertEquals('Warm', e1.AccountRating);
}
}