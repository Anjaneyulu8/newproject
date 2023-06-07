import { LightningElement,wire } from 'lwc';
import getaccountlist from '@salesforce/apex/wire.getaccountlist';
export default class Wiremethod extends LightningElement {

    @wire(getaccountlist)
    listt

}