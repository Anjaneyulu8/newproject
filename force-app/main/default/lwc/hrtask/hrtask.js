import { LightningElement, wire } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi'
import Candidate__c from '@salesforce/schema/Candidate__c';
import insertround from '@salesforce/apex/Hrtask.insertround';
import searchlist from '@salesforce/apex/Hrtask.searchlist';
 const columnsList = [{
        label: 'Name', fieldName: 'Name'
    }]
export default class Hrtask extends LightningElement {
    candidatebtn = false;


   
    selectedRecords;
    serachkey;
    finalrecord;
    cols;
    col;

    searchkey(event) {
        this.serachkey = event.target.value;
        console.log(this.serachkey);
    }

    @wire(searchlist, { str: '$serachkey' })
    wiredData({ error, data }) {
        if (data) {
            this.finalrecord = data;
            this.col = columnsList;
            console.log('Data', data);
        } else if (error) {
            console.error('Error:', error);
        }
    }

    formfileds = {}

    fieldvalues(event) {
        const { name, value } = event.target;
        this.formfileds[name] = value;
        console.log(this.formfileds);
    }

    HandleSave() {
        const input = { apiName: 'Candidate__c', fields: this.formfileds }
        createRecord(input).then(result => {
            console.log(result);
        })
    }



    getSelectedRec() {
      var dat =  this.template.querySelector("lightning-datatable").getSelectedRows();
      
console.log(this.selectedRecords);
 
     this.selectedRecords = Array.from(dat);
     console.log('aree',this.selectedRecords);
     
     insertround({str:this.selectedRecords})
         .then(result=>{
    console.log('mawaaaa',result);
         })

     

    }






    createcandidate(event) {
        this.candidatebtn = true;
        console.log(this.createcandidate);
    }
}