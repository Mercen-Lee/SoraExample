//
//  CreateUser.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct CreateUser: Requestable, Body {
    
    let route = ReqresService.path("users")
    let method: RequestMethod = .post
    
    let body: User
}

struct CreateUserResponse: Decodable {

    let id: String
    let createdAt: Date
}
