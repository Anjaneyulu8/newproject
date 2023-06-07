public class patientSaveController {

    @AuraEnabled
    public static Patient__c createPatient (Patient__c pat)
    {
        insert pat;
        return pat;
    }    
}