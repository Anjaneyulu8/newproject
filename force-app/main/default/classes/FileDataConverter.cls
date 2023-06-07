public class FileDataConverter {
    
    public static String getFileDataAsBase64(String fileId) {
        
        // Get the ContentVersion record for the file
        ContentVersion file = [SELECT VersionData FROM ContentVersion WHERE ContentDocumentId = :fileId];
        
        // Convert the VersionData Blob into a base64-encoded String
        String fileData = EncodingUtil.base64Encode(file.VersionData);
        
        return fileData;
    }
}