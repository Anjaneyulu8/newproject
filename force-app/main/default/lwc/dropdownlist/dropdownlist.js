import { LightningElement } from 'lwc';
import apexMethod from '@salesforce/apex/dynamicObjectList.getObjectName';
import apeXxMethod from '@salesforce/apex/dynamicObjectList.getdata';



export default class ComboboxBasic extends LightningElement {
 value='';
 options=[];
 Listofrecords;
 check=false;
  
 req;

 connectedCallback() {
      apexMethod()
      .then(result =>{
        let arr=[];
        for(let i=0;i<result.length;i++){
          arr.push({label:result[i], value:result[i]},);
        }
        this.options=arr;
      })
     }
    
     handleChange(event){
        this.value = event.target.value;
        // this.checck=true;
     }

handleClick(event){
 //this.value=event.target.value;
  apeXxMethod({data:this.value})
  .then(result=>{
    this.check=true;
    console.log(result);
    this.Listofrecords=result;
    console.log(this.Listofrecords);
  }).catch(error=>{
    console.error(error);
  })
    // console.log((apeXxMethod({data:this.value})));
    // console.log(apeXxMethod({data:this.value}).result().PromiseResult);
    // apeXxMethod({data:this.value}).then(result =>{
    //   let arr2 = [];
    //   for(let x = 0; x<result.length; x++){
    //     arr2.push(result[x]);
    //   }
    // })
    
    // console.log('The required array is ',this.arr2);

  

}
  columns=[
  {label:'Record Id',fieldName:'Id'},
  {label:'Record Name',fieldName:'Name'}
];


refreshComponent(event){
        eval("$A.get('e.force:refreshView').fire();");
    }
}