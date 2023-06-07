import { LightningElement,track,wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import createLoginCredentials from '@salesforce/apex/UserCredentials.createLoginCredentials';
import login from '@salesforce/apex/UserCredentials.login';


// import intel from '@salesforce/resourceUrl/intel';
// import intel1 from '@salesforce/resourceUrl/intel1';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Signin extends NavigationMixin(LightningElement) {
     @track showSignup = false;
     @track loginFormVisible = false;
     variable=false;
     
     signupUsername;
    signupEmail;
    signupPassword;
    username;
    password;
    handleChange(event) {
        this.selectedProductId = event.detail.value;
        console.log('37',this.selectedProductId);
    }
     handleLogin() {
         console.log('16-handlelogin');
        this.username = this.template.querySelector('lightning-input[data-id=username]').value;
         this.password = this.template.querySelector('lightning-input[data-id=password]').value;
         console.log('username:'+this.username);
         console.log('password:'+this.password);
        login({ username: this.username, password: this.password })
            .then(result => {
                 console.log('23');
                 this.variable=true;
                 console.log('66',this.variable);
                 this.loginFormVisible=false;

                if (result === 'success') {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Login successful',
                            variant: 'success'
                        })
                    );
          
                    // this[NavigationMixin.Navigate]({
                    //     type: 'standard__webPage',
                    //     attributes: {
                    //         componentName:'c__myCustomComponent'
                    //     }
                    // });
                } else {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error',
                            message: 'Invalid username or password',
                            variant: 'error'
                        })
                    );
                }
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error',
                        message: error.body.message,
                        variant: 'error'
                    })
                );
            });
    }

     
       handleSignup() {
         console.log('Signup');
         this.signupUsername = this.template.querySelector('lightning-input[data-id=signupUsername]').value;
         this.signupEmail = this.template.querySelector('lightning-input[data-id=signupEmail]').value;
          this.signupPassword = this.template.querySelector('lightning-input[data-id=signupPassword]').value;
         console.log('username:'+this.signupUsername);
         console.log('password:'+this.signupEmail);
         console.log('signupPassword'+this.signupPassword);

         createLoginCredentials({
            username: this.signupUsername,
            email: this.signupEmail,
            password: this.signupPassword
        })
            .then(result => {
                console.log('Login credentials created: ', result);
                // Do something after successful signup

   if (result != null) {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Signup successful',
                            variant: 'success'
                        })
                    );
          
                    
                } else {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error',
                            message: 'Invalid username or password',
                            variant: 'error'
                        })
                    );
                }


            })
            .catch(error => {
                console.error('Error creating login credentials: ', error);
                // Handle errors here
            });
    }
     toggleSignup() {
        this.showSignup = !this.showSignup;
         this.loginFormVisible = !this.loginFormVisible;
    }

iconformopenclose(){
    if (this.showSignup) {
        // if the form is currently visible, hide it
        this.showSignup = false;
        console.log('94',this.showSignup);
    } else if (this.loginFormVisible) {
        // if the other form is currently visible, hide it first
        this.loginFormVisible = false;
         console.log('98',this.loginFormVisible);
        this.showSignup = true;
        console.log('100',this.showSignup);
    } else {
        // if no form is visible, show the signup form
        this.showSignup = true;
         console.log('104',this.showSignup);
    }
}


}