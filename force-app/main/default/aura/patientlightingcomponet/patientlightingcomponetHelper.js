({
	helperMethod : function(component) {
		 var getlist=component.get("c.getpatient");
      getlist.setCallback(this,function(ab){
          component.set('v.patient',ab.getReturnValue());
      });
       $A.enqueueAction(getlist);
	}
})