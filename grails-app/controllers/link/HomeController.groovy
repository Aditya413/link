package link

class HomeController {

    def dashboard(){
        User u1 = session["u1"]
        flash.message="Welcome${u1}"
        //render "welcome to your account $u1.firstName"
        render view: "dashboard"
    }

    def register()
    {
        render("registration successful");
    }
}
