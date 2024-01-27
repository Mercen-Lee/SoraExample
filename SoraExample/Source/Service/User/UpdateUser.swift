//
//  UpdateUser.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct UpdateUser: Requestable, Body {
    
    let route: ReqresService = .path("users", "2")
    let method: RequestMethod = .put
    
    let body: User
}

struct UpdateUserResponse: Decodable {

    let name: String
    let job: String
    let updatedAt: Date
}
