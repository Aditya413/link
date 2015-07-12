package link

class LinkResourceController {

    def createUserLinkResource() {


        LinkResource linkResource = new LinkResource(params)
        User user = session["u1"]
        linkResource.createdBy = user
        Topic topic = Topic.get(params["topicId"])
        linkResource.topics = topic


        if (linkResource.validate()) {
            linkResource.save()
            List<Subscription> subscriptionList = Subscription.findAllByTopics(topic)
            subscriptionList.each {
                if (user.id != it.usersId) {
                    ReadingItem readingItem = new ReadingItem(isRead: false, user: it.users, resource: linkResource)
                    readingItem.save()
                }
                render "link document created successfully"
            }
        } else {
            render linkResource.errors

        }


    }
}
