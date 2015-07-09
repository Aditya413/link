package link;
import link.*
class Topic {

String name
Date dateCreated
Date lastUpdated
Visibility visibility
static belongsTo=[users:User]
static hasMany=[subscriptions:Subscription,resources:Resource]

    static constraints = {
	lastUpdated nullable:true,blank:true;

    }

    String toString() {
        return name;
    }


}
