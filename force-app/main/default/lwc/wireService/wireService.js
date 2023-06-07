import { LightningElement,wire } from 'lwc';
import Id from '@salesforce/user/Id'
import {getRecord} from 'lightning/uiRecordApi'
export default class WireService extends LightningElement {
UserId=Id
dataa
@wire(getRecord,{recordId:'0055i000000O91ZAAS', fields:['User.Name','User.Email']})
userdetails({data,error}){
   if(data)
   {
        this.dataa=data.fields;
    console.log('10',this.retrievedata)
   }
   if(error){
       console.error(error)
   }
}

@wire(getRecord,{recordId:'0055i000000O91ZAAS', fields:['User.Name','User.Email']})
userdata
  


}