//
//  RemoveUser.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct RemoveUser: SoraRequest {
    
    let route: ReqresService = .path("users", "2")
    let method: SoraMethod = .delete
}
