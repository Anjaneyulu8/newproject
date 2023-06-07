public class GetFileData {
   public static void getFile() {
      String endpoint = 'https://popcornapps104-dev-ed.my.salesforce.com/services/data/v51.0/connect/files/{fileId}/content';
      String fileId = '0695i000009X0CGAA0';
      HttpRequest req = new HttpRequest();
      req.setEndpoint(endpoint.replace('{fileId}', fileId));
      req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());
      req.setMethod('GET');
      Http http = new Http();
      HttpResponse res = http.send(req);
      System.debug(res.getBody());
   }

}