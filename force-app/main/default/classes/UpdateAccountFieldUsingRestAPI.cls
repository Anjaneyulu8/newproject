public class UpdateAccountFieldUsingRestAPI {

   // Here Define Your endpoint
    private static final String REST_ENDPOINT = '/services/data/v52.0/sobjects/Account/';

    //  Method for request
    private static final String HTTP_METHOD_PATCH = 'PATCH';

    // Define the field to be updated
    private static final String FIELD_NAME = 'Name';

    public static void updateAccountField(String accountId, String newFieldValue, String accessToken) {

        // Create the HTTP request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(REST_ENDPOINT + accountId);
        request.setMethod(HTTP_METHOD_PATCH);
        request.setHeader('Authorization', 'Bearer ' + accessToken);
        request.setHeader('Content-Type', 'application/json');

        // Defining the JSON payload for the request
        String requestBody = '{ "' + FIELD_NAME + '" : "' + newFieldValue + '" }';
        request.setBody(requestBody);

        // Send the HTTP request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Check the response for any errors
        if (response.getStatusCode() >= 400) {
            System.debug('Error updating account field: ' + response.getBody());
        } else {
            System.debug('Account field updated successfully.');
        }
    }
}