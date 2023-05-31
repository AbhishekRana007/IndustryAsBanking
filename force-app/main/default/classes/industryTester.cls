@isTest
public with sharing class industryTester {

    @isTest
    public static void insertTester() {
        
          TriggerConfig__c triggerConfig =new TriggerConfig__c();
        triggerConfig.Name='Account';
        triggerConfig.IsActive__c=true;
        triggerConfig.ApexHandler__c='industryHandler';
        triggerConfig.SkipForUsers__c=null;
        
        
        insert triggerConfig;
        
    list<Account> accList= new list<Account> ();
          for(integer i=0;i<100;i++){
          accList.add (new account(Name='haloAlcanes'+i,Industry='Banking',phone='123456456'));
         }         
        test.startTest();
         insert accList;
        test.stopTest();
       
      //system.assertequals(200,newAcc.size());              
    }

    @isTest
    public static void deleteTester() {
        
          TriggerConfig__c triggerConfig =new TriggerConfig__c();
        triggerConfig.Name='Account';
        triggerConfig.IsActive__c=true;
        triggerConfig.ApexHandler__c='industryHandler';
        triggerConfig.SkipForUsers__c=null;
        
        
        insert triggerConfig;
        
    list<Account> accList= new list<Account> ();
          for(integer i=0;i<100;i++){
          accList.add (new account(Name='haloAlcanes'+i,Industry='Banking',phone='123456456'));
         }         
        test.startTest();
         insert accList;
        test.stopTest();
        list<Account> newAcc=[select name,id from Account where name like 'haloAlcanes%' limit 100];
        delete newAcc;
      //system.assertequals(200,newAcc.size());              
    }
}