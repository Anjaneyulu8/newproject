public class AccountRating {
    public AggregateResult[] groupedResults{get;set;}
    public AccountRating(){
        groupedResults = [select rating,count(name) a from Account Group by rating];
           }
}