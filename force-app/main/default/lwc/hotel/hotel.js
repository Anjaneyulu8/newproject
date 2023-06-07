import { LightningElement, track } from 'lwc';
import apexMethod from '@salesforce/apex/hotel.getcity';
import apexxmethod from '@salesforce/apex/hotel.hotellist';

export default class hotel extends LightningElement {
 options=[];
 Listofrecords

connectedCallback(){
      apexMethod()
      .then(result =>{
        let arr=[];
        for(let i=0;i<result.length;i++){
          arr.push({label:result[i], value:result[i]},);
        }
        this.options=arr;
      })
     }



     
handleChange(event) {
        this.value = event.detail.value;
        console.log(value);
     }

     handleChange(event){
this.value = event.detail.value;
console.log(value);
apexxmethod()
      .then(result =>{
        let arrr=[];
        for(let i=0;i<result.length;i++){
          arr.push({label:result[i], value:result[i]},);
        }
        this.Listofrecords=arrr;
        console.log(Listofrecords);
      })




     }






}