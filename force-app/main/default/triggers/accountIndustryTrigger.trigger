trigger accountIndustryTrigger on Account (after insert,before insert,after delete,before delete) {

    TriggerFactory.initiateHandler(Account.sObjectType);

}