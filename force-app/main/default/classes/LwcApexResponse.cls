public with sharing class LwcApexResponse {

    @AuraEnabled
    public Boolean isSuccess;
    @AuraEnabled
    public Object response;
    @AuraEnabled
    public LwcApexError error;

    public LwcApexResponse() {
        this.isSuccess = false;
        this.response = null;
    }

    public LwcApexResponse(Boolean isSuccess, Object response) {
        this.isSuccess = isSuccess;
        this.response = response;
    }

    public LwcApexResponse(LwcApexError error) {
        this.isSuccess = false;
        this.response = null;
        this.error = error;
    }
}
