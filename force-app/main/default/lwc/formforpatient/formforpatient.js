import { LightningElement,track } from 'lwc';
export default class Formforpatient extends LightningElement {
  handleClick() {
    const payload = {
      "Customer_Name": "Rai"
    };

    fetch('https://cors-anywhere.herokuapp.com/http://localhost:8083/insertdata', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(payload)
    })
    .then(response => {
      return response.json();
    })
    .then(data => {
      this.response = data;
    })
    .catch(error => {
      console.error('Error:', error);
    });
  }
}