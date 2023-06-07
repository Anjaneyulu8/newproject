/* 
 * @date          May 2022
 * @author        Jitendra Zaa 
 * @description   Demo of barcode  
 */
 
import { LightningElement } from 'lwc';
import { getBarcodeScanner } from 'lightning/mobileCapabilities';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import searchlist from '@salesforce/apex/barcodeclass.searchlist';

export default class Barcode_api_demo extends LightningElement {
globalfinaldata;
    scannedBarcode = ''; 
    Listofrecords;

    /**
     * When component is initialized, detect whether to enable Scan button
     */
    connectedCallback() {
        this.myScanner = getBarcodeScanner(); 
    }

    /**
     * Method executed on click of Barcode scan button
     * @param event 
     */
    handleBarcodeClick(event){ 




    // RElated Data List
  // this.Listofrecords=result;
//    this.child=columnforchild;




        if(this.myScanner.isAvailable()) {
            
            const scanningOptions = {
                barcodeTypes: [this.myScanner.barcodeTypes.QR, 
                                this.myScanner.barcodeTypes.UPC_E,
                                this.myScanner.barcodeTypes.EAN_13,
                                this.myScanner.barcodeTypes.CODE_39 ],
                instructionText: 'Scan a QR , UPC , EAN 13, Code 39',
                successText: 'Scanning complete.'
            }; 
            this.myScanner.beginCapture(scanningOptions)
            .then((result) => { 
                this.scannedBarcode = result.value;  
                this.newmethod();
            })
            .catch((error) => { 
                this.showError('error',error);
            })
            .finally(() => {
                this.myScanner.endCapture();
            }); 
        }
        else {
            this.showError('Error','Scanner not supported on this device');
        }
    }

    /**
     * Utility method to show error message
     * @param  title 
     * @param  msg 
     */
    showError(title,msg) {
        const event = new ShowToastEvent({
            title: title,
            message: msg,
            error : 'error'
        });
        this.dispatchEvent(event);
    }



    newmethod(){
        searchlist({str:this.scannedBarcode})
  .then(result=>{
      let globalfinaldata=[];
      result.forEach(currentItem => {
          let lastdata={};

          lastdata.Name=currentItem.Name;
          globalfinaldata.push(lastdata);
          //TODO : currentItem
      })
    // console.log('areree',result);
    // alert(result);
    




    })
    }
}