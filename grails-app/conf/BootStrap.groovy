import link.*

class BootStrap {

   def init = { servletContext ->
        createUser();
        createTopic();
        /*createResource();
        createResourceRating();
        createSubscription();
        createReadingItem();*/
       createLinkresource();
       createDocumentresource();
    }

   void createUser() {

        User user = new User(firstName: "Aditya", email: "adityabhatnagar413@gmail.com", userName: "aditya413", password: "aditya413", confirm_password: "aditya413", lastName: "Bhatnagar",admin:true,active:true);
        user.save(failOnError: true)
        user = new User(firstName: "gaurav", email: "gauravsharma@intelligrape.com", userName: "gauravsh", password: "gauravs", confirm_password: "gauravs", lastName: "Sharma",admin:true,active:true);
        user.save(failOnError: true)
    }


   void createTopic() {
        List user = User.list();
        user.each { u ->
            5.times {
                Topic topic = new Topic(name: "Grails1", visibility: Visibility.PUBLIC )
                u.addToTopics(topic);
                u.addToSubscriptions(new Subscription(topics: topic, seriousness: Seriousness.VERYSERIOUS));
                u.save(failOnError: true);
            }
        }
    }

    /*void createResource() {
        Resource resource = new Resource()

    }

    void createResourceRating() {
        ResourceRating resourcerating = new ResourceRating()
    }

    void createSubscription() {
        Subscription subscription = new Subscription()
    }

    void createReadingItem() {
        ReadingItem readingitem = ReadingItem()
    }*/


    void createLinkresource(){
        List t1= Topic.list();
        t1.each {t->
            5.times {

                 t.addToResources(new LinkResource(users:User.first(),title: "groovy",summary: "groovy runs on gvm",url:"http://www.google.com" ))
                t.save(flush:true,failOnError: true);
            }
        }

    }
    void createDocumentresource(){


    }

}

