import { LightningElement } from 'lwc';
import Patient__c_OBJECT from '@salesforce/schema/Patient__c';
import Name_FIELD from '@salesforce/schema/Patient__c.Name';
import Email_Id__c_FIELD from '@salesforce/schema/Patient__c.Email_Id__c';

/**
 * Creates Account records.
 */
export default class AccountCreator extends LightningElement {

    patientObject = Patient__c_OBJECT;
    myFields = [Name_FIELD, Email_Id__c_FIELD];

    handleAccountCreated(){
        // Run code when account is created.
    }
}