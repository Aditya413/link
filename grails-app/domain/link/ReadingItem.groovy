package link

class ReadingItem {
Boolean isRead;
static belongsTo=[users:User,resources:Resource]
    String toString()
    {return resources}
    static constraints = {
    }
}
