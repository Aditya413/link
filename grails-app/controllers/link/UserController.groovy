package link

class UserController {

    def index() {
        redirect( controller: "/LinkResource", action:"index")
    }

    }

