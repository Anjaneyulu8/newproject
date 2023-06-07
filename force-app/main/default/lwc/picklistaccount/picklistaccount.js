import { LightningElement,wire } from 'lwc';
import{getPicklistValuesByRecordType,getObjectInfo} from 'lightning/uiObjectInfoApi'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
export default class Picklistaccount extends LightningElement {
picklistvaluess
@wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
idvaluesacc
abc

 @wire(getPicklistValuesByRecordType,{objectApiName: ACCOUNT_OBJECT, recordTypeId: '$idvaluesacc.data.defaultRecordTypeId'})

 valuespick({data,error}){
       
   if(data){
       this.picklistvaluess=data;
       console.log('The data issss',data.picklistFieldValues.Industry.values)
       this.abc = data.picklistFieldValues.Industry.values.map(item=>{
           return {label : item.label, value : item.value}
       })
    }
   if(error){
        console.log(error)
    }
}


}