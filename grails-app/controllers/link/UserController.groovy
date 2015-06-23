package link

class UserController {

    def index() {
        render view:"registeration"
        //redirect( controller: "/LinkResource", action:"index")
    }

    def save()
    {

        User user2 = new User(params)
            if(user2.validate())
            {
                user2.save( flush: true)
                redirect(controller: 'Home',action: 'dashboard');
            }

        else{
                render "$user2.errors"
            }


        }
    }

