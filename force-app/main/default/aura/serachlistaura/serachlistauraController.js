({
	save : function(component, event, helper) {
		
        var action = component.get("c.createPatient");
        
        action.setParams({pat : component.get("v.patient")});
        
        action.setCallback(this, function(response) {
            
            var state = response.getState();
            
            if (state === "SUCCESS") {
                
                alert("From server: succefully record is inserted" );
            }
            
            else if (state === "ERROR") {
                
                var errors = response.getError();
                
                alert(JSON.stringify(errors));
            }
        });

        $A.enqueueAction(action);
	}
})