//
//  CreateUser.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct CreateUser: SoraRequest {
    
    let route: ReqresService = .path("users")
    let method: SoraMethod = .post
    
    let body: User
}

struct CreateUserResponse: Decodable {

    let id: String
    let createdAt: Date
}
