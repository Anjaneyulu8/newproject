import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation'
export default class Navigatecomponent extends NavigationMixin(LightningElement){
handleClick(){
    this[NavigationMixin.Navigate]({
        type:'standard__namedpage',
        attributes:{
            pageName:'home'
        }
    })
}

}