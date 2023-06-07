import { LightningElement } from 'lwc';
// import fetch from 'fetch';
export default class Lightingchtgpt extends LightningElement {  
    apiUrl = 'https://api.openai.com/v1/engines/davinci/completions';
    apiKey = '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';
    model = 'davinci';
    prompt = 'What is the weather today in';
    maxTokens = 20;
    n = 1;
    stop = '';

    getResponse(prompt) {
    fetch(apiUrl, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${apiKey}`
        },
        body: JSON.stringify({
            prompt: prompt,
            max_tokens: maxTokens,
            n: n,
            stop: stop
        })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        this.response = data.choices[0].text;
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });
}
handleInputChange(event) {
    this.prompt = event.target.value + ' ';
    this.getResponse(this.prompt);
}


}