package link

class UserController {

    def userPublicProfile() {

        User users = User.findById(params.u1_Id)
        List<Topic> userTopic;
        User currentUser = session["u1"]
        if (currentUser) {

            if (currentUser.id == users.id || currentUser.admin==true) {

                userTopic = Topic.findAllByUsers(users, [max: 3, offset: 0, sort: 'lastUpdated', order: 'desc'])
            } else {

                userTopic = Topic.findAllByUsersAndVisibility(users, Visibility.PUBLIC, [max: 3, offset: 0, sort: 'lastUpdated', order: 'desc'])
            }

        } else {

            userTopic = Topic.findAllByUsersAndVisibility(users, Visibility.PUBLIC, [max: 3, offset: 0, sort: 'lastUpdated', order: 'desc'])
        }



        List<Resource> resourceonPublicTopic = Resource.createCriteria().list(max: 3, offset: 0) {

            eq("createdBy", users)
            "topic" {
                eq('visibility', Visibility.PUBLIC)
            }
        }

        [users: users, userTopic: userTopic, resourceonPublicTopic: resourceonPublicTopic]
    }


    def allUserList() {

        List<User> users = User.createCriteria().list(max: 3, offset: 0) {}


        [users: users, total: users.totalCount]

    }

    def showActiveUser() {
        List<User> users = User.createCriteria().list(max: 3, offset: 0) {
            eq('active', true)
        }
        render(view: 'allUserList', model: [users: users, total: users.totalCount])
    }


    def showDeactiveUser() {
        List<User> users = User.createCriteria().list(max: 3, offset: 0) {
            eq('active', false)
        }
        render(view: 'allUserList', model: [users: users, total: users.totalCount])
    }


    def manageUser(Integer id, Boolean active) {


        int status = User.executeUpdate("update User u set u.active=:activeStatus where u.id=:uId",
                [activeStatus: active, uId: id.toLong()])
        if (status != 0) {

            flash.message = "user updated succesfully"
        } else {
            flash.message = "user not updated succesfully"
        }
        redirect(action: 'allUserList')

    }


}


