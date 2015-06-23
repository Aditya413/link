package link

class User {
String firstName
String email
String userName
String password
String confirm_password
String lastName
byte[] photo
Boolean admin
Boolean active
Date dateCreated
Date lastUpdated

    static transients = ['confirm_password']
static hasMany=[topics:Topic,subscriptions:Subscription,readingItems:ReadingItem,resourceRatings:ResourceRating]

   static constraints = {
       password blank: false;
       confirm_password bindable:true, blank:false;
        photo nullable:true;
        active nullable: true,blank :true;
        admin nullable: true, blank: true;
        dateCreated nullable:true,blank:true;
       lastUpdated nullable:true,blank:true;
        email unique:true,blank:false;

password(validator:{val, obj ->if(val?.equals(obj.confirm_password))
{
 return true;
}
else {false}
})
    }
}
