/**
 * @description       : A generic error wrapper to allow Apex methods to provide feedback to Frontend(LWC, React etc.) in a standardized way.
 * @group             : Lightning Web Components
**/

public class LwcApexError {

    @AuraEnabled
    public String code;
    @AuraEnabled
    public String message;

    public LwcApexError(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
