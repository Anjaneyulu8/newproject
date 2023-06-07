import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class NavigationExampleLWC extends NavigationMixin(LightningElement) {
    @api recordId;
    // Navigate to New Account Page
    navigateToNewAccountPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'new'
            },
        });
    }
    // Navigate to View Account Page
    navigateToViewAccountPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'Account',
                actionName: 'view'
            },
        });
    }



    navigateToLightningComponent() {
        this[NavigationMixin.Navigate]({
            type: "standard__component",
            attributes: {
                componentName: "c__serachlistaura"
            }
        });
    }



    // Navigate to Edit Account Page
    navigateToEditAccountPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'Account',
                actionName: 'edit'
            },
        });
    }
    

   navigatetoapp() {
    this[NavigationMixin.Navigate]({

        type:"standard__app",

        attributes: {

          appTarget:"c__HRMS"

        }

      });

    }


 



   
    
    navigateToVFpage(){
        this[NavigationMixin.GenerateUrl]({
            type: "standard__webPage",
            attributes: {
               url:'/apex/accountpdf?id=' +this.recordId
            }
        }).then(generatedUrl => {
            window.open(generatedUrl);
        });
    }
   
}