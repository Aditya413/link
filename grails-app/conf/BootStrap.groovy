import link.*
class BootStrap {

    def init = { servletContext ->
	createUser()
	createTopic()
	createResource()
	createResourceRating()
	createSubscription()
	createReadingItem()
    }
    
	void createUser(){
	
User user = new User			(firstName:"Aditya",email:"adityabhatnagar413@gmail.com",username:"aditya413",password:"aditya413",confirm_password:"aditya413",lastName:"Bhatnagar");
user.save(failOnError:true)
user = new User
(firstName:"gaurav",email:"gauravsharma@intelligrape.com",username:"gauravsh",password:"gauravs",confirm_password:"gauravs",lastName:"Sharma");
user.save(failOnError:true)
}


void createTopic()
	{
		List user = User.list();
		user.each{u->
		5.times{
		Topic topic = new Topic(name:"Grails1",visiblity:"Public",dateCreated:null,lastUpdate:null)
		user.addToTopic(topic);
		user.addToSubscription(new Subscription(topic:topic,serioursness:"veryserious"));
		user.save(failOnError:true);
			}
			}	
	}

void createResource()
{
	Resource resource = new Resource()
}

		void createResourceRating()
	{
		ResourceRating resourcerating = new ResourceRating()
	}
	
	void createSubscription()
	{
	Subscription subscription = new Subscription()
	}

	void createReadingItem()
	{
		ReadingItem readingitem= ReadingItem()
	}



}

