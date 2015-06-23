package link

import javax.swing.text.View

class LoginController {

    def index() {
        render view:"Login"
        //redirect( controller: "/LinkResource", action:"index")

    }
    def login(){
     String u= params.email
        String p= params.password;
        User u1=User.findByEmail(u);
        if (u1.password==p)
        {
            render view: "welcome"
        }
        else
        {
            render("wrong credintials")
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
