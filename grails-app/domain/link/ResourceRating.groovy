package link

class ResourceRating {
Integer score;
static belongsTo = [users:User]
static constraints = {
    }
}
