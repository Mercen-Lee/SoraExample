//
//  UpdateUser.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct UpdateUser: SoraRequest {
    
    let route: ReqresService = .path("users", "2")
    let method: SoraMethod = .put
    
    let body: User
}
