import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name'
// import SAlUTATION from '@salesforce/schema/Account.Salutation__c' 
import TYPE from '@salesforce/schema/Account.Type'
export default class Lghtrecordfromtca extends LightningElement {
    objecname=ACCOUNT_OBJECT
    fieldlist=[NAME_FIELD,TYPE]
onhandler(event){
    console.log(event.details.id)
}
}