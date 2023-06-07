import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class FeedItemDeletion extends LightningElement {
    @track feedItemId;
    @track accesssToken;
   

    handleInput(event) {
        this.feedItemId = event.target.value;
        console.log('9',this.feedItemId);

    }


    connectedCallback() {
        this.getaccessToken();
    }
    
 getaccessToken(){
     console.log('started');

     let url='https://popcornapps104-dev-ed.my.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9wt4IL4O5wvKyixYWE22tF41IjdGTgtcO.HmJ.54gzgRg_4xPJWhn93G.d0fEhlYUn8aJNYwmBzCKZou3&client_secret=A551FDB461C6CF0469429BE77F03B5BDEA2BC71504A07F7152708B5962A08BB5&username=anjaneyulukorimi8@gmail.com&password=Anjaneyulu69sCFNSmPRAKHbwwnU3kegzRcs';
     fetch(url,{
         method:"POST"
     })
    //  .then((response)=>{
    //      var res=response;
    //      console.log('res',res);
         
    //  })
     
    //  .then(data=>{
    //      var finaldata=data;
    //      console.log('28',finaldata);
    //  })


.then((response) => 
    response.json()).then((data) => {
       this.accesssToken = data.access_token;
      console.log('Access Token1:', this.accesssToken);

 })

  

}
    deleteFeedItem() {
        // this.getaccessToken();
        console.log('51',this.accesssToken);
        let accessToken=this.accesssToken;
 let endpoint = '/services/data/v52.0/sobjects/FeedItem/' + this.feedItemId;

        let xhr = new XMLHttpRequest();
        xhr.open('DELETE', endpoint, true);
        xhr.setRequestHeader('Authorization', 'Bearer ' + accessToken);
        xhr.setRequestHeader('Content-Type', 'application/json');

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 204) {
                    // Feed item deleted successfully
                    const toastEvent = new ShowToastEvent({
                        title: 'Success',
                        message: 'Feed item deleted successfully.',
                        variant: 'success'
                    });
                    this.dispatchEvent(toastEvent);
                } else {
                    // Error deleting feed item
                    const toastEvent = new ShowToastEvent({
                        title: 'Error',
                        message: 'Error deleting feed item.',
                        variant: 'error'
                    });
                    this.dispatchEvent(toastEvent);
                }
            }
        }.bind(this);

        xhr.send();
    }
}