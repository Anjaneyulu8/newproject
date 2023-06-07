import { LightningElement,wire } from 'lwc';
import callutrace from '@salesforce/apex/intgerationutrace.callutrace';
export default class Ipaddress extends LightningElement {
varr;
finalvar;





    handleClick(){
        console.log('6');
       this.varr =this.template.querySelector('lightning-input').value;
        console.log(this.varr);

       callutrace({ipaddress:this.varr})
       .then(result=>{
        this.finalvar=result;
        console.log(this.finalvar);
    })





    }

}