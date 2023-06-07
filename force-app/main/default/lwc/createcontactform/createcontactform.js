import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi'
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class Createcontactform extends LightningElement {
    formfields={}
changehandler(event){
    const{name,value}=event.target
    this.formfields[name]=value
    console.log(this.formfields)
}
handleClick(){
    const recordInput={apiName:CONTACT_OBJECT.objectApiName, fields:this.formfields}
    
    createRecord(recordInput).then(result=>{
        this.ShowToast('success!');
        console.log(result);
        this.formfields={}

    }).catch(error=>{
        this.ShowToast('error',error.body.message);
        
})

}

ShowToast(title,message,variant){
    this.dispatchEvent(new ShowToastEvent({
        title,
        message,
        variant:variant||'success'
    }))
}
}