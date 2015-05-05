package link

class Topic {

String name
Date dateCreated
Date lastUpdated

static belongsTo=[user:User]
static hasMany=[subscription:Subscription,resource:Resource]

    static constraints = {
	lastUpdated nullable:true,blank:true;
    }
}
