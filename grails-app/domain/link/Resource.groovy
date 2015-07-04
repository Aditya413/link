package link

class Resource {

    String summary
    String title
    Date dateCreated
    Date lastUpdated
    User createdBy
    static belongsTo = [topics: Topic]
    static hasMany = [resourceRatings: ResourceRating, readingItems: ReadingItem]
    static mapping = {
        tablePerHierarchy(false)
    }
    static constraints = {
        title(size: 1..1024, blank: false);
    }


}
