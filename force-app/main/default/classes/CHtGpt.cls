public class CHtGpt {
    @auraEnabled
    public static String generateText(String inputText) {
        String apiKey = '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';
		String model = 'davinci';
        String prompt = inputText;
		Integer maxTokens = 100;
		String temperature = '0.5';
		Http http = new Http();
		HttpRequest req = new HttpRequest();
		req.setEndpoint('https://api.openai.com/v1/engines/' + model + '/completions');
		req.setMethod('POST');
		req.setHeader('Content-Type', 'application/json');
		req.setHeader('Authorization', 'Bearer ' + apiKey);
		req.setBody('{"prompt": "' + prompt + '", "max_tokens": ' + maxTokens + ', "temperature": ' + temperature + '}');
		req.setTimeout(12000);
		System.debug('26>>'+req);
		HttpResponse res = http.send(req);
		System.debug(res);
		Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
		System.debug('REsponse Map:'+responseMap);
		List<Object> responseList = (List<Object>) responseMap.get('choices');
		Map<String, Object> finalMap = (Map<String, Object>) responseList.get(0);
		String generatedText = (String) finalMap.get('text');
		System.debug(generatedText);
		return generatedText;
	}
}