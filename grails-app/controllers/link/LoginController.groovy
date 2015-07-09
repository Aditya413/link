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
        User u1=User.findByEmail(u);
        if (u1.password==p)
        {
            session["u1"] = u1
            session["u1_id"] = u1.id;
            flash.message = "welcome${u1}"
            redirect(controller: "Home", action: "dashboard");
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
            render "password change successfully";
        }
    }
}