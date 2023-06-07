public class TextToSpeech {
    public static void textToSpeech(String text) {
        String endpoint = 'https://texttospeech.googleapis.com/v1/text:synthesize';
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Authorization', 'Bearer ' + 'AIzaSyDAlsCMwcjmxW6TmP0gvuE91Y2HMIt1t50');
        req.setBody('{' +
                    '"input": {' +
                    '"text": "' + text + '"' +
                    '},' +
                    '"voice": {' +
                    '"languageCode": "en-US",' +
                    '"name": "en-US-Wavenet-F"' +
                    '},' +
                    '"audioConfig": {' +
                    '"audioEncoding": "MP3"' +
                    '}' +
                    '}');
        Http http = new Http();
        HttpResponse res = http.send(req);
        System.debug(res.getBody());
    }
}