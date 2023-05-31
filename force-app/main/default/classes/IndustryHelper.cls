public with sharing class IndustryHelper {
    
   /* public static map<string,id> accountsBulk(list<Account> accountData)
{
    map<string,id> newcontacts=new map<string,id>();
    for(account naccs:accountData)
    {
    if(naccs.Industry=='Banking'){
        
        newcontacts.put(naccs.name,naccs.id);
    }

}
return newcontacts;
}*/


public static contact accountsContactMatcher(Account Data)
{
    contact ncc=new contact();
   if(Data.Industry=='Banking'){

    ncc.lastName=Data.Name;
    ncc.AccountId=Data.Id;
    ncc.phone=Data.Phone;

   }
   return ncc;
}

public static void bulkingInsert(list<contact>cc){

    insert cc;

}

}