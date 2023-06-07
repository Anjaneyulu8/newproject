import { LightningElement,wire,api} from 'lwc';
import getdata from '@salesforce/apex/parentaccountlist.getdata';
export default class Childlist extends LightningElement {
  @api  accountlist;
  @api searchkey;
  handleClick(){
      //account acc=new account();
    const storevent= new CustomEvent('myevent',{detail:this.accountlist});
      this.dispatchEvent(storevent);


  }


  @wire(getdata, {str:'$searchkey'})
  wiredData({ data,error}) {
    if (data) {
     this.accountlist=data;

      console.log('Dataaaa', this.accountlist);
    } else if (error) {
       console.error('Error:', error);
    }
  }
    
   



}