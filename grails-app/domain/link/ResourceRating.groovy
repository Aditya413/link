package link

class ResourceRating {
Integer score;
static belongsTo = [users:User,resource:Resource]
    String toString()
    {
        return score
    }
static constraints = {
    }
}
