@RestResource(urlMapping='/fileToAccount/*')
global with sharing class FileToAccountController {
    
    @HttpPost
    global static void uploadFileToAccount() {
        RestRequest request = RestContext.request;
        Blob fileContent = request.requestBody;
        
        String accountId = request.params.get('accountId');
        String fileName = request.params.get('fileName');
        String fileType = request.params.get('fileType');
        
        // Fetch the Account record
        Account account = [SELECT Id FROM Account WHERE Id =: accountId];
        
        // Create a new Attachment object and insert it on the Account record
        Attachment attachment = new Attachment();
        attachment.Name = fileName;
        attachment.Body = fileContent;
        attachment.ParentId = account.Id;
        attachment.ContentType = fileType;
        insert attachment;
    }
}