import { LightningElement,wire } from 'lwc';
import Companylist from '@salesforce/apex/company.Companylist'
import getdata from '@salesforce/apex/company.getdata'
import fulllistdata from '@salesforce/apex/company.fulllistdata'
import removedata from '@salesforce/apex/company.removedata'
import   adddata from '@salesforce/apex/company.adddata'
const column = [
    { label: 'Name', fieldName: 'Name'},
    // {id:'Id',fieldName:'Id'},
    { type: "button", typeAttributes: {  
        label: 'View',  
        name: 'view',  
        title: 'view',  
        disabled: false,  
        value: 'view',  
        iconPosition: 'left'  
    } }

    
];

const columnforchild = [
    { label: 'Name', fieldName: 'Name'},
    // {id:'Id',fieldName:'Id'},
    { type: "button", typeAttributes: {  
        label: 'Remove',  
        name: 'Remove',  
        title: 'remove',  
        disabled: false,  
        value: 'Remove',  
        iconPosition: 'left'  
        
    } }

    
];



const fulllist = [
    { label: 'Name', fieldName: 'Name'},
    // {id:'Id',fieldName:'Id'},
    { type: "button", typeAttributes: {  
        label: 'Add',  
        name: 'add',  
        title: 'add',  
        disabled: false,  
        value: 'add',  
        iconPosition: 'left'  
        
    } }

    
];







export default class Task extends LightningElement {


isShowModal = false;
    showModalBox() {  
        this.isShowModal = true;
    }

    hideModalBox() {  
        this.isShowModal = false;
    }


   



listrecords;

totallist;
    dataa;
    delteid;
    child;
str;
columnss;
varble;
    columnsforparent;
    Listofrecords;
    actionName;
@wire(Companylist)
wiredData({ error, data }) {
  if (data) {
    console.log('Data', data);
  
  this.dataa=data;
  this.columnsforparent = column;
//   this.isShowModal=false;
   
    console.log(this.Dataa);
    console.log(this.columns);
  } else if (error) {
     console.error('Error:', error);
  }
}
//View Button
handleRowAction(event){
    const recId =  event.detail.row.Id;   
     this.str=recId; 
     console.log('id',this.str);
     
getdata({str:this.str})
  .then(result=>{
    // RElated Data List
   this.Listofrecords=result;
   this.child=columnforchild;
    this.isShowModal=true;
  //  console.log(this.Listofrecords);
  }).catch(error=>{
    console.error(error);
  })
     console.log(this.str);
   // console.log(recId);

   //All REcords LIst

   fulllistdata({str:this.str})
   .then(result=>{
//console.log('final-list',this.result);
       this.listrecords=result;
       console.log('final_list',this.listrecords);
       this.totallist=fulllist;

   })
}

handleRowActionn(event){
       const addid =  event.detail.row.Id;  

    console.log('anna ede id',addid);
    adddata({str:this.str,emp:addid})
    .then(result=>{
       // console.log('hloo bhai',result);

    })
}
   handleRowAction1(event){
       
       const remid =  event.detail.row.Id; 
       removedata({str:this.str,emp:remid}) 
      // this.refreshComponent();
     //  window.onload = handleRowAction1;
     window.location.reload();
     

}

// refreshComponent(){
//         eval("$A.get('e.force:refreshView').fire();");
//     }






}