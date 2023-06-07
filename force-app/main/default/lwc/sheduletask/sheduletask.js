import { LightningElement,wire } from 'lwc';
import todaylist from '@salesforce/apex/task.todaylist';
import task from '@salesforce/apex/task.updaterec';
export default class Sheduletask extends LightningElement {
  //  checkbox;
  finalvarible=[];
checkdata;
result1;
ischeck;

    todaylistvalue;
@wire(todaylist)
wiredData({ error, data }) {
  if (data) {
    console.log('Data', data);
    this.todaylistvalue=data;
  } else if (error) {
     console.error('Error:', error);
  }
}

checkthedata(event){
    this.checkdata=event.target.dataset.recordid;
    let currentbox= event.currentTarget.dataset.recordid;

let box=this.template.querySelectorAll('lightning-button');




for( let i=0; i<box.length;i++){
    let boxex=box[i];

    
if(boxex.dataset.recordid==currentbox && boxex.disabled==false)
{
    boxex.disabled=true;
}

}




    console.log(this.checkdata);
    task({str:this.checkdata}).then(result=>{
   // result.disable=true;
        console.log(result);
result.map(item=>{
    //console.log(item)
    this.finalvarible=item;
    console.log('mawwaaa',this.finalvarible);
})


    })


}
deltedata(event){
     this.result1=event.target.dataset.recordid;
    console.log(this.result1);
    


    


}


}