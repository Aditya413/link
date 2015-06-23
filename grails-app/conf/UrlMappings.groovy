class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(view:"login/Login")
       // "/"(view:"/index")
        "500"(view:'/error')
	}
}
