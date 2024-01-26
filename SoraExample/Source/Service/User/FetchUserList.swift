//
//  FetchUserList.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct FetchUserList: SoraRequest {
    
    let route: ReqresService = .path("users")
    let method: SoraMethod = .get
}
