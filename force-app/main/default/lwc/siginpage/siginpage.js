import { LightningElement, track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import USER_OBJECT from '@salesforce/schema/User';

export default class SignInPage extends LightningElement {
    @track username = '';
    @track password = '';

    handleUsernameChange(event) {
        this.username = event.target.value;
    }

    handlePasswordChange(event) {
        this.password = event.target.value;
    }

    handleSubmit(event) {
        event.preventDefault();
        // Call the authentication function here
        const fields = {};
        fields[USER_OBJECT.fields.Username.fieldApiName] = this.username
    }
}