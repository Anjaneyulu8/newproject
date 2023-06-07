import { LightningElement, api,track } from 'lwc';
import getProduct from '@salesforce/apex/IntelProductController.getProduct';


export default class IntelProductController extends LightningElement {
    @api recordId;
    @track availableBikes;

    connectedCallback() {   
        this.getdatafromApex();
    }

    getdatafromApex(){
        getProduct()
        .then(result=>{
            console.log("-----------", result);
            this.availableBikes=result;
        })
        .catch(error=>{
             this.error = error;
             console.log("----------getting error", error);
            this.availableBikes = undefined;
        })
    }

   

}