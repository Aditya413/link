
package link
import link.*
class Subscription {
Seriousness seriousness
Date dateCreated
static belongsTo=[users:User,topics:Topic]

    static constraints = {
    }
}
