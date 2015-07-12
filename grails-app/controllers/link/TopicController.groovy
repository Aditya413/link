package link

class TopicController {

    def myService = new MyService()

    def createTopic(Topic topic) {
        User user = session["u1"]
        topic.users = user

        if (topic.validate()) {
            topic.save()
            Subscription subs = new Subscription(topic: topic, user: user, seriousness: Seriousness.SERIOUS)
            if (subs.validate()) {
                subs.save()
            }

            flash.message = "topic created succesfully"
            render(view: "/home/_createTopic")
        } else {
            render topic.errors
        }
    }
    def topicShow(Integer tid) {
        Topic topics = Topic.findById(tid)
        List<User> topicUsers = Subscription.createCriteria().list {
            projections {
                property 'users'
            }
            eq('topics', topics)
        }


        List<Resource> topicResources = Resource.findAllByTopics(topics)

        boolean showToSubscribe = false
        if (session["u1"]) {
            User u1 = session["u1"]
            int count = Subscription.countByTopicsAndUsers(topics, u1)
            if (count == 0) {
                showToSubscribe = true
            }
            if (u1.id == topics.users.id) {
                showToSubscribe = false
            }

        }
        [topics:topics,topicUsers:topicUsers,topicResources:topicResources,showToSubscribe:showToSubscribe]
    }


}
