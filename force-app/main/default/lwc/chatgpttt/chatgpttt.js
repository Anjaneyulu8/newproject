import { LightningElement } from 'lwc';
import generateText from '@salesforce/apex/CHtGpt.generateText';

export default class ChatGpt extends LightningElement {
    inputTexts;
    outputText;
    variable=false;
    handleInputChange(event) {
        this.inputTexts = event.target.value;
        //console.log(this.inputText);  
    }
    handleButtonClick(event) {
        console.log(this.inputTexts);
        console.log('Button Clicked');
        this.variable=true;
        generateText({ inputText: this.inputTexts })
            .then(result => {
                console.log('result', result);
               
                this.outputText = result;
                this.variable=false;
                console.log('Output Text:' + this.outputText);
            })
            .catch(error => {
                console.log('error', error);
            });

    }
}