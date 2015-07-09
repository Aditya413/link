package link

class TopicController {

    def myService = new MyService()

    def topicShow(String tid) {
        Topic topic = Topic.findById(tid)
        List<User> topicUsers = Subscription.createCriteria().list {
            projections {
                property 'u1'
            }
            eq('topics', topic)
        }


        List<Resource> topicResources = Resource.findAllByTopics(topic)

        boolean showToSubscribe = false
        if (session["u1"]) {
            User user = session["u1"]
            int count = Subscription.countByTopicsAndUsers(topic, user)
            if (count == 0) {
                showToSubscribe = true
            }
            if (user.id == topic.users.id) {
                showToSubscribe = false
            }

        }
        [topics:topic,topicUsers:topicUsers,topicResources:topicResources,showToSubscribe:showToSubscribe]
    }


}
