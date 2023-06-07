import { LightningElement, api } from "lwc";
 
export default class ParentComponent extends LightningElement {
 ab="Hello!"
abc="";
 chandler(event){
     this.abc=event.target.value;
     console.log(this.abc);
 }
}