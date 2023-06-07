import { LightningElement,track } from 'lwc';
export default class ChatBot extends LightningElement {


    @track messages = [];
    @track inputValue = '';

    handleInput(event) {
        this.inputValue = event.target.value;
    }

    handleSubmit(event) {
        event.preventDefault();

        // Add user message to the chat
        this.messages.push({
            text: this.inputValue,
            isBot: false
        });

        // Clear input field
        this.inputValue = '';

        // Generate bot response
        const botResponse = this.getBotResponse(this.inputValue);

        // Add bot response to the chat
        this.messages.push({
            text: botResponse,
            isBot: true
        });
    }

    getBotResponse(message) {
        // Code to process user message and generate a response from the chatbot
        // Example code:
        if (message.toLowerCase().includes('hello')) {
            return 'Hi there! How can I assist you today?';
        } else if (message.toLowerCase().includes('order')) {
            return 'Please provide your order number and I will look up the status for you.';
        } else if (message.toLowerCase().includes('pricing')) {
            return 'You can find our pricing information on our website.';
        } else if (message.toLowerCase().includes('contact')) {
            return 'Our customer service team can be reached at 1-800-555-1234.';
        } else {
            return 'I\'m sorry, I don\'t understand. Can you please rephrase your question?';
        }
    }
}