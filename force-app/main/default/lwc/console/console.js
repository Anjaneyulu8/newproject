import { LightningElement,track } from 'lwc';
export default class Console extends LightningElement {

   

    value(event){
        this.input1=event.target.value;
      
    }
      valuee(event){
        this.input2=event.target.value;
      
    }
    console(){
        console.log(this.input1);
        console.log(this.input2);
    }


}