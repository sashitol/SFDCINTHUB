/**
 * @File Name          : AccountCacheController.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 21/1/2020, 1:00:08 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    16/1/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
//public class AccountCacheController {
public with sharing class AccountCacheController {
 //123456
  @AuraEnabled
  public static List<Account> getAccounts() {
     
  list<account> acc =[SELECT Id, name,phone,Industry,Fax FROM Account ORDER BY createdDate ASC];
	
      System.debug('@@@'+acc);
       return acc;
  }
}