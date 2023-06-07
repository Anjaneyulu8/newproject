public class TwoFileData {
    // Define the URLs of the two files to compare
    String url0 = 'https://popcornapps104-dev-ed.my.salesforce.com/sfc/p/5i000000KSvF/a/5i000000Plik/dpX.ACt_zIjzf2R2127OuYUdShrOAMVjVCvvezWWpW8';
    String url2 = 'https://popcornapps104-dev-ed.my.salesforce.com/sfc/p/5i000000KSvF/a/5i000000PliQ/erGy2IWipBofsv9TAP2JIK2agJUG_iNzr3UWLKQeQ9g';

    public void compareFiles() {
        // Make HTTP request for URL 1
        HttpRequest req1 = new HttpRequest();
        req1.setEndpoint(url0);
        req1.setMethod('GET');
        Http http1 = new Http();
        HttpResponse res1 = http1.send(req1);
        System.debug('Status Code1: ' + res1.getStatusCode());
        Blob documentData = null;
        if (res1.getStatusCode() == 200) {
            String contentType = res1.getHeader('Content-Type');
            System.debug('contentType'+contentType);
            if (contentType == 'application/pdf') {
                documentData = res1.getBodyAsBlob();
                System.debug('19');
                System.debug('Document Data1: ' + documentData);
            } else {
                // Handle unsupported content type
            }
        }

        // Make HTTP request for URL 2
        HttpRequest req2 = new HttpRequest();
        req2.setEndpoint(url2);
        req2.setMethod('GET');
        Http http2 = new Http();
        HttpResponse res2 = http2.send(req2);
        System.debug('Status Code2: ' + res2.getStatusCode());
        String content2 = '';
        if (res2.getStatusCode() == 200) {
            String contentType = res2.getHeader('Content-Type');
            if (contentType.contains('text/html')) {
                content2 = res2.getBody().stripHtmlTags();
                System.debug('Content2: ' + content2);
            } else {
                // Handle unsupported content type
            }
        }

        // Compare the contents of the two files
        if (documentData != null && content2 != null && content2.equals(documentData.toString())) {
            System.debug('The contents of the two files are identical.');
        } else {
            System.debug('The contents of the two files are different.');
        }
    }
}