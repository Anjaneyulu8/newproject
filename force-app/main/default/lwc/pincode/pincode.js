import { LightningElement } from 'lwc';
export default class Pincode extends LightningElement {
    inputP;
      handleinput(event){
        this.inputP=event.target.value;
        console.log('hlo',this.inputP);
    }

}