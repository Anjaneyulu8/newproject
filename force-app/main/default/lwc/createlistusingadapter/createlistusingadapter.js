import { LightningElement,wire } from 'lwc';
import{getListUi} from 'lightning/uiListApi'

import CONTACT_OBJECT from '@salesforce/schema/Contact'
export default class Createlistusingadapter extends LightningElement {
    contacts=[]
    @wire(getListUi,{objectApiName:CONTACT_OBJECT,listViewApiName:'AllContacts'})
    listhandler({data,error}){
        if(data){
            
            this.contacts=data.records.records
            console.log(this.contacts);
        }
        if(error){
            console.log(error);
        }
    }

}