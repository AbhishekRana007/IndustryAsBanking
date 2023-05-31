public with sharing class industryHandler implements ITrigger  {

   /**
 * Sample Trigger Handler for Account
 */
//map<string,id> newcontacts=new map<string,id>();
list<contact> allContact=new List<contact>();
    contact getContact=new Contact();
    public void bulkBefore(){
  		system.debug('--- bulkbEfore is called');      
    }
    
    public void bulkAfter(){

        //IndustryHelper.accountsBulk(trigger.new);     

  		system.debug('--- bulkAfter is called');      
    }
    
    public void beforeInsert(SObject so){
  		system.debug('--- beforeInsert is called');      
    }
    public void beforeUpdate(SObject oldSo, SObject so){
  		system.debug('--- beforeUpdate is called');      
    }

    public void beforeDelete(SObject so){
  		system.debug('--- beforeDelete is called');      
    }

    public void afterInsert(sObject so){
  		system.debug('--- afterInsert is called'); 
          getContact = IndustryHelper.accountsContactMatcher((Account)so);  
          allContact.add(getContact); 
    }

    public void afterUpdate(SObject oldSo, SObject so){
  		system.debug('--- afterUpdate is called');      
    }

    public void afterDelete(SObject so){
  		system.debug('--- afterDelete is called');      
    }
  
    public void andFinally(){
        IndustryHelper.bulkingInsert(allContact);    
        system.debug('--- andFinally called');      
    }

}
