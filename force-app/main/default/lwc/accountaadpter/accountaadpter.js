import { LightningElement,wire } from 'lwc';
import {getObjectInfo} from 'lightning/uiObjectInfoApi'
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
export default class Accountaadpter extends LightningElement {
// dataa
defaultRecordTypeId;
    @wire(getObjectInfo,{ObjectApiName:ACCOUNT_OBJECT})
    objectInfo({data,error}){
        if(data){
            this.defaultRecordTypeId=data.defaultRecordTypeId;
            console.log('11',data)
            console.log(defaultRecordTypeId);
        }
// this.dataa=data;
// this.defaultRecordTypeId=data.defaultRecordTypeId;
// console.log(this.dataa)
if(error){
    console.error(error)
}
    }


}