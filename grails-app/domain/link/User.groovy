package link

class User {
String firsName
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

static hasMany=[topic:Topic,subscription:Subscription,readingitem:ReadingItem,resourcerating:ResourceRating,resource:Resource]

    static constraints = {
	photo nullable:true,blank:true
	dateCreated nullable:true,blank:true;
	email unique:true,blank:false;

confirm_password( validator:{val, obj ->if(val?.NotEquals(obj.password)) 
{
 return ["password.doesn't.match",suggestion]
}
	})
	
    }

}
