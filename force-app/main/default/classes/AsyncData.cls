//Generated by wsdl2apex

public class AsyncData {
    public class executeAnonymousResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.ExecuteAnonymousResult getValue() {
            data.executeAnonymousResponse_element response = (data.executeAnonymousResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class compileTriggersResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.CompileTriggerResult[] getValue() {
            data.compileTriggersResponse_element response = (data.compileTriggersResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class compileAndTestResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.CompileAndTestResult getValue() {
            data.compileAndTestResponse_element response = (data.compileAndTestResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class wsdlToApexResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.WsdlToApexResult getValue() {
            data.wsdlToApexResponse_element response = (data.wsdlToApexResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class runTestsResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.RunTestsResult getValue() {
            data.runTestsResponse_element response = (data.runTestsResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class compileClassesResponse_elementFuture extends System.WebServiceCalloutFuture {
        public data.CompileClassResult[] getValue() {
            data.compileClassesResponse_element response = (data.compileClassesResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncApex {
        public String endpoint_x = 'https://login.salesforce.com/services/Soap/s/57.0';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public data.CallOptions_element CallOptions;
        public data.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public data.SessionHeader_element SessionHeader;
        public data.PackageVersionHeader_element PackageVersionHeader;
        public data.DebuggingInfo_element DebuggingInfo;
        public data.DisableFeedTrackingHeader_element DisableFeedTrackingHeader;
        public data.DebuggingHeader_element DebuggingHeader;
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/08/apex';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/2006/08/apex';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/08/apex';
        private String PackageVersionHeader_hns = 'PackageVersionHeader=http://soap.sforce.com/2006/08/apex';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/08/apex';
        private String DisableFeedTrackingHeader_hns = 'DisableFeedTrackingHeader=http://soap.sforce.com/2006/08/apex';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/08/apex';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/2006/08/apex', 'data'};
        public AsyncData.executeAnonymousResponse_elementFuture beginExecuteAnonymous(System.Continuation continuation,String String_x) {
            data.executeAnonymous_element request_x = new data.executeAnonymous_element();
            request_x.String_x = String_x;
            return (AsyncData.executeAnonymousResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.executeAnonymousResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'executeAnonymous',
              'http://soap.sforce.com/2006/08/apex',
              'executeAnonymousResponse',
              'data.executeAnonymousResponse_element'}
            );
        }
        public AsyncData.compileTriggersResponse_elementFuture beginCompileTriggers(System.Continuation continuation,String[] scripts) {
            data.compileTriggers_element request_x = new data.compileTriggers_element();
            request_x.scripts = scripts;
            return (AsyncData.compileTriggersResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.compileTriggersResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'compileTriggers',
              'http://soap.sforce.com/2006/08/apex',
              'compileTriggersResponse',
              'data.compileTriggersResponse_element'}
            );
        }
        public AsyncData.compileAndTestResponse_elementFuture beginCompileAndTest(System.Continuation continuation,data.CompileAndTestRequest CompileAndTestRequest) {
            data.compileAndTest_element request_x = new data.compileAndTest_element();
            request_x.CompileAndTestRequest = CompileAndTestRequest;
            return (AsyncData.compileAndTestResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.compileAndTestResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'compileAndTest',
              'http://soap.sforce.com/2006/08/apex',
              'compileAndTestResponse',
              'data.compileAndTestResponse_element'}
            );
        }
        public AsyncData.wsdlToApexResponse_elementFuture beginWsdlToApex(System.Continuation continuation,data.WsdlToApexInfo info) {
            data.wsdlToApex_element request_x = new data.wsdlToApex_element();
            request_x.info = info;
            return (AsyncData.wsdlToApexResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.wsdlToApexResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'wsdlToApex',
              'http://soap.sforce.com/2006/08/apex',
              'wsdlToApexResponse',
              'data.wsdlToApexResponse_element'}
            );
        }
        public AsyncData.runTestsResponse_elementFuture beginRunTests(System.Continuation continuation,data.RunTestsRequest RunTestsRequest) {
            data.runTests_element request_x = new data.runTests_element();
            request_x.RunTestsRequest = RunTestsRequest;
            return (AsyncData.runTestsResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.runTestsResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'runTests',
              'http://soap.sforce.com/2006/08/apex',
              'runTestsResponse',
              'data.runTestsResponse_element'}
            );
        }
        public AsyncData.compileClassesResponse_elementFuture beginCompileClasses(System.Continuation continuation,String[] scripts) {
            data.compileClasses_element request_x = new data.compileClasses_element();
            request_x.scripts = scripts;
            return (AsyncData.compileClassesResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncData.compileClassesResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/08/apex',
              'compileClasses',
              'http://soap.sforce.com/2006/08/apex',
              'compileClassesResponse',
              'data.compileClassesResponse_element'}
            );
        }
    }
}