import { LightningElement, api,track,wire } from 'lwc';
import { deleteRecord } from 'lightning/uiRecordApi';
import listpatients from '@salesforce/apex/ListOfpatientsLwc.listpatients';
import { refreshApex } from '@salesforce/apex';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class viewformpatient extends LightningElement {
      PatientList;
@wire (listpatients)  PatientList;
@api recordId;

//@api objectApiName;

//@api delete;

DeleteAction(event) {
    this.recordId=event.target.value;

    deleteRecord(this.recordId)

        .then(() => {

            this.dispatchEvent(
                new ShowToastEvent ({
                title: 'Success',
                message: 'Patient is Deleted',
                variant: 'success'
                    })
            );

           return refreshApex(this.PatientList);

                })

           


        .catch(error => {

           console.log('uable to delete the record'+error.body.message);
           this.dispatchEvent(
            new ShowToastEvent({
                title: 'Error while deleting record',
                message: error.body.message,
                variant: 'error'
            })
        );
        

                });

}

}