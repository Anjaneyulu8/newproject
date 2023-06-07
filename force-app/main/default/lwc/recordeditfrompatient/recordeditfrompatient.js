import { LightningElement } from 'lwc';
import Patient__c_OBJECT from '@salesforce/schema/Patient__c';
import Name_FIELD from '@salesforce/schema/Patient__c.Name';
import Email_Id__c_FIELD from '@salesforce/schema/Patient__c.Email_Id__c';
/**
 * Creates Account records.
 */
export default class recordeditfrompatient extends LightningElement {
    accountObject = Patient__c_OBJECT;
    nameField = Name_FIELD;
    emailField = Email_Id__c_FIELD;

    handleAccountCreated(){
        // Run code when account is created.
     
    }

}