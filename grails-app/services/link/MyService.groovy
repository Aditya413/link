package link

import grails.transaction.Transactional

@Transactional
class MyService {

    def serviceMethod() {

    }

    def recentResources() {

        List<Resource> rlist = Resource.list(sort: "lastUpdated", order: 'desc', max: 5, offset: 0)
        return rlist;
    }




    def topPosts() {

        List<Resource> topPosts = Resource.createCriteria().list{
            projections {
                groupProperty 'resources'
            }
            sum('score', 'sumscore')
            eq('visibility', Visibility.PUBLIC)
            order('sumscore', 'desc')
            maxResults(5)
            firstResult(0)
            }

        return topPosts;
        }


    }

