public with sharing class CaseController {
    @AuraEnabled
    public static Case createCase(String jsonString, String resId){
        try{
            return CaseService.createCase(jsonString, resId);
        } catch (QueryException e){
            throw new QueryException(e.getMessage());
        }
    }
}