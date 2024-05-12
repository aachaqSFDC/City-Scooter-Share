public with sharing class ScooterController {
    @AuraEnabled(cacheable=true)
    public static List<Asset> searchScooters(String depotLocation, DateTime checkInTime, DateTime checkOutTime) {
/*      List<Scooter__c> availableScooters = [SELECT Id, Name FROM Asset WHERE Depot_Location__c = :depotLocation AND 
                                              Id NOT IN (SELECT Scooter__c FROM Booking__c WHERE 
                                                         (Check_In_Time__c <= :checkOutTime AND Check_Out_Time__c >= :checkInTime) OR
                                                         (Check_In_Time__c <= :checkInTime AND Check_Out_Time__c >= :checkOutTime))];
 */

        List<Asset> availableScooters = [SELECT Id, Name FROM Asset WHERE AssetType__c = 'Scooter' ];
        return availableScooters;
    }
}
