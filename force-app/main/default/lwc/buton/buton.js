import { LightningElement, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class OpenLink extends NavigationMixin(LightningElement) {
  handleClick() {
    this[NavigationMixin.Navigate]({
      type: 'standard__webPage',
      attributes: {
        url: 'https://www.google.com',
        target: '_self'
      }
    });
  }
}