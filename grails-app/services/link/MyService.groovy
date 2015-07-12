package link

import grails.transaction.Transactional

@Transactional
class MyService {

    def serviceMethod() {

    }

    def recentResources() {

        List<Resource> rlist = Resource.list(sort: "lastUpdated", order: 'desc', max: 5, offset: 0)
        'topics' {
            eq('visibility', Visibility.PUBLIC)
        }
        return rlist;
    }



    def topPosts() {

        List<ResourceRating> rr = ResourceRating.createCriteria().list() {
            projections {
                groupProperty 'resources'
                sum('score', 'sumscore')
            }
            'resources' {
                'topics' {
                    eq('visibility', Visibility.PUBLIC)
                }
            }
            order('sumscore', 'desc')
            maxResults(5)

        }


        List<Resource> topPost = rr.collect { it.first() }
        return topPost
    }


    }

