import link.*

class BootStrap {
    def init = { servletContext ->
        createUser();
        createTopic();
        createResource();
        createSubscription();
        createResourceRating();
        createReadingItem();
//        createLinkresource();
//        createDocumentresource();
    }

    void createUser() {

        User user = new User(firstName: "Aditya", email: "adityabhatnagar413@gmail.com", userName: "aditya413", password: "aditya413", confirm_password: "aditya413", lastName: "Bhatnagar", admin: true, active: true);
        user.save(failOnError: true)
        User user1 = new User(firstName: "gaurav", email: "gauravsharma@intelligrape.com", userName: "gauravsh", password: "gauravs", confirm_password: "gauravs", lastName: "Sharma", admin: true, active: true);
        user1.save(failOnError: true, flush: true)

    }


    void createTopic() {
        List user = User.list();
        user.each { u ->
            5.times {
                Topic topic = new Topic(name: "Grails1", visibility: Visibility.PUBLIC)
                u.addToTopics(topic);
                u.save(failOnError: true, flush: true);
            }
        }
    }

    void createResource() {
        List<Topic> topic = Topic.list();
        topic.eachWithIndex { t, index ->
            t.addToSubscriptions(new Subscription(seriousness: Seriousness.SERIOUS, users: User.first()));
            if (index % 2 == 0) {
                5.times {
                    t.addToResources(new LinkResource(createdBy: User.first(), title: "groovy", summary: "groovy runs on gvm", url: "http://www.google.com"))
                }
                t.save(flush: true, failOnError: true)
            } else {
                5.times {
                    t.addToResources(new DocumentResource(createdBy: User.first(), title: "javaEE", summary: "Advance java Enterprise Edition", filePath: "/"))
                }
                t.save(flush: true, failOnError: true)
            }
        }
    }


    void createSubscription() {
        Subscription subscription = new Subscription()
    }

    void createResourceRating() {

        User user = new User()
        List<User> u = User.list()
        println "${u.size()}"
        List<Resource> r = Resource.list()
        Random ran = new Random()
        r.each {
            it.addToResourceRatings(new ResourceRating(users: u.get(ran.nextInt(2)), score: ran.nextInt(5)))
        }
    }


    void createReadingItem() {

        List<User> u = User.list()
        List<Resource> r = Resource.list()
        Random ran = new Random()
        u.eachWithIndex { us, index ->
            3.times {
                us.addToReadingItems(new ReadingItem(resources: r.get(ran.nextInt(10)), Isread: true)).save(flush: true, failOnError: true)
                us.addToReadingItems(new ReadingItem(resources: r.get(ran.nextInt(10)), Isread: true)).save(flush: true, failOnError: true)
            }


        }
    }
}