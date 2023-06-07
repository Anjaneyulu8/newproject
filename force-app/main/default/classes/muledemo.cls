public class muledemo {
	public static HttpResponse makeApiCall(String inputText) {
        String model = 'davinci';
        String prompt = inputText;
		Integer maxTokens = 100;
		String temperature = '0.5';
        
		String apiKey = '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';
        
		String endpoint = 'https://api.openai.com/v1/engines/davinci/completions';
		HttpRequest req = new HttpRequest();
		req.setEndpoint('https://api.openai.com/v1/engines/' + model + '/completions');
		req.setMethod('POST');
		req.setHeader('Content-Type', 'application/json');
		req.setHeader('Authorization', 'Bearer ' + apiKey);
        req.setBody('{"prompt": "' + prompt + '", "max_tokens": ' + maxTokens + ', "temperature": ' + temperature + '}');
    	req.setTimeout(120000);
//jhu   
		Http http = new Http();
		HttpResponse ab= http.send(req);
        System.debug(ab);
        return ab;
    }
}