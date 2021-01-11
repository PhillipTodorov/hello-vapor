import Vapor

func routes(_ app: Application) throws {
	
	try app.register(collection: UserController())
	
    app.get("home") { req -> EventLoopFuture<View> in
		return req.view.render("index", ["title" : "hello"])
		
    }
	
	app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
	
	app.get("movies", "genre", ":name"){ req -> String in
		
		guard let name = req.parameters.get("name") else {
			throw Abort(.badRequest)
		}
		return "The genre was \(name)"
	}
	
	
}
