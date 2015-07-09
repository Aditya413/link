package link

class ReadingItem {
Boolean Isread;
static belongsTo=[users:User,resources:Resource]
    String toString()
    {return resources}
    static constraints = {
    }
}
