//
//  File.swift
//  
//
//  Created by Phillip Todorov on 08/01/2021.
//

import Foundation
import Vapor

struct UserController: RouteCollection {
	
	func boot(routes: RoutesBuilder) throws {
		let users = routes.grouped("users")
		
		users.get(use: index)
		users.post(use: create)
		
		users.group(":userId") { user in
			user.get(use: show)
		}
	}
	
	func show(req: Request) { user in
		
	}
	
	func index(req: Request) throws -> String {
		return "INDEX"
	}
	
	func create(req: Request) throws -> String {
		return "CREATE"
	}
}
