import { LightningElement,api, wire} from 'lwc';
import getProduct from '@salesforce/apex/IntelProductController.getProduct';
export default class Listofproducts extends LightningElement {

        @api recordId;

        @wire(getProduct, { recordId: 'a0s5i000000AeWDAA0' })
        product;

    }