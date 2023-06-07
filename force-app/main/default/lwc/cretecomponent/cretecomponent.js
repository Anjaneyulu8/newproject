import { LightningElement,wire} from 'lwc';
import accountlist from '@salesforce/apex/a.accountlist'
  const col=[
        {
            label:'Id', fieldName:'Id'
        },
          {
            label:'type', fieldName:'Type'
        },
    ]

export default class Cretecomponent extends LightningElement {
 selectedlist='';
 columns;
list;
 
 
 @wire(accountlist,{data:'$selectedlist'})
 list


get htmldata(){
    return[
        {label:"customer-channel" ,value:"Customer - Channel"},
        {label:"customer-Direct", value:"Customer - Direct"}
    ]
}

handleChange(event){

    
    this.selectedlist=event.target.value;
    console.log(this.selectedlist);
    this.columns=col;
}


  



}