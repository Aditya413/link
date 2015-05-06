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

static hasMany=[topics:Topic,subscriptions:Subscription,readingItems:ReadingItem,resourceRatings:ResourceRating]

    static constraints = {
	photo nullable:true,blank:true;
	dateCreated nullable:true,blank:true;
	email unique:true,blank:false;

confirm_password( validator:{val, obj ->if(val?.equals(obj.password))
{
 return true;
}
else {false}
})
	
    }

}
