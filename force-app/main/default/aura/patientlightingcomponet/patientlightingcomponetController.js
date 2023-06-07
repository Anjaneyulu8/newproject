({ 
    patientlist : function(component,event,helper)
  {
     	 var getlist=component.get("c.getpatient");
      getlist.setCallback(this,function(ab){
          component.set('v.patient',ab.getReturnValue());
      });
       $A.enqueueAction(getlist);
  },
getPatientListVal : function(component,event,helper){
   var varible=component.find('test').get('v.value');
    console.log('successfully recieved'+varible);
    var varible2=component.get("c.searchpatient");
    varible2.setParams({searchkey :varible
                       });
    
    
varible2.setCallback(this,function(a)
                     {
                         //console.log('values are recieved'+JSON.stringify(varible2));
                         component.set('v.patient',a.getReturnValue());
                     });    
    $A.enqueueAction(varible2);
    
      
}
	
})