package link

import javax.swing.text.View

class LoginController {
def myService
    def index() {

        List<Resource> recentResources = myService.recentResources();

        List<Resource> topPosts = myService.topPosts();

        render view:"Login",model: [recentResources:recentResources, topPosts: topPosts]


    }
    def login(){
        String u= params.email
        String p= params.password;
        User u1= User.findByEmail(u);
        if (u1.password==p)
        {
            session["u1"] = u1
            session["u1_id"] = u1.id;
            flash.message = "welcome${u1}"
            redirect(controller: "home", action: "dashboard");
        }
        else
        {
            println("Incorrect User going to redirect .... ")
            flash.message = "Please Enter the Correct Credentials"
            redirect(controller: "login", action: "index");
        }

    }

    def forgot()
    {
        render view: "reset";
    }

    def reset()
    {
        String e = params.email

        User u2 = User.findByEmail(e);

        if(u2==null)
        {
            render "no such user exist";
        }

        else
        {
            u2.password=params.password;
            u2.save(flush: true,failOnError: true)
            render "password change successfully";
        }
    }

    def save()
    {
        User user = new User()
         user.firstName = params.firstName
        user.lastName = params.lastName
        user.email = params.email
        user.userName = params.userName
        user.password = params.password
        user.confirm_password = params.confirm_password

        if (user.validate()) {

            user.save(flush: true)
            session["user"] = user;
            session["user_id"] = user.id
            println("sesion name :::: " + session["user"])
            println("COrrect User :: going to redirect .... ")
            redirect(url: '/')
        } else {
            println("InCOrrect User :: going to redirect .... ")
            user.errors.each {
                println it
            }
            flash["user"]=user;
            redirect(controller: 'login', action: 'index')

    }
}

}