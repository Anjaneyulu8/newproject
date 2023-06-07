/* myDatatable.js */
import { LightningElement, wire, track } from 'lwc';
import getAccountList from '@salesforce/apex/dataretriveclass.getAccountList';
const COLS = [
    { label: 'Account Name', type: 'Name'
     
    }];

export default class MyDatatable extends LightningDatatable {
dataa;


    static customTypes = {
        customName: {
            template: customNameTemplate,
            standardCellLayout: true,
            typeAttributes: ['Name']
        }
    }
    
    @wire(getAccountList)
    wiredData({ error, data }) {
      if (data) {
        console.log('DataHoo', data);
        this.dataa=data;
      } else if (error) {
         console.error('Error:', error);
      }
    }
   
}