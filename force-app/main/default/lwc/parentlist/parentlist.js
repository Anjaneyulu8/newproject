import { LightningElement,api} from 'lwc';
export default class Parentlist extends LightningElement {


column=[{label: 'Name', fieldName: 'Name'}]


    @api acclist;
   @api inputP;
    handleinput(event){
        this.inputP=event.target.value;
    }
handledata(event){
    this.acclist=event.detail;
    console.log('anji',this.acclist);

   
}
}