import { LightningElement } from 'lwc';
export default class Todoapp extends LightningElement {
inputvalu=[];
inputvalue1;
deltevalue;
datahandler(event){
  this.inputvalue1= this.template.querySelector('lightning-input').value;
  this.inputvalu.push(this.inputvalue1);
  console.log('hi',this.inputvalu);

 // console.log('Inputvalues',this.inputvalue);

}
handleClick(event){
    // this.deltevalue= this.template.querySelector('lightning-input').value;
//console.log('value',this.deltevalue);
     this.inputvalue=null;
}
}