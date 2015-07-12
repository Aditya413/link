package link

class HomeController {

    def dashboard() {
        User u1 = session["u1"]
        flash.message = "welcome${u1}"
        List<Subscription> userSub = Subscription.findAllByUsers(u1)
        List<Topic> userTopic = Topic.findAllByUsers(u1)
        List<Subscription> userTop5 = Subscription.findAllByUsers(u1, [sort: "topics.lastUpdated", order: "desc", offset: 0, max: 5])

        def a = Resource.createCriteria().list(max: 3, offset: 0) {
            projections {
                groupProperty('topics')
                rowCount("a")

            }

            'topics' {
                eq('visibility', Visibility.PUBLIC)

            }

            order("a", "desc")
        }



        List<Topic> trendingTopics = a.collect { it.first() }

        //inbox
        params.max = params.max ?: 5
        List<Resource> inboxlist = ReadingItem.createCriteria().list(params) {
            projections {
                property 'resources'
            }
            eq('users', u1)
            eq('isRead', false)

            'resources' {
                order('lastUpdated', 'desc')
            }

            }

            render view: "dashboard", model: [u1: u1, userSub: userSub, userTopic: userTopic, userTop5: userTop5, trendingTopics: trendingTopics,inboxlist:inboxlist]

        }


    def register() {
        render("registration successful");
    }
}