//
//  FetchUserList.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Sora

struct FetchUserList: Requestable {
    
    let route = ReqresService.path("users")
    let method: RequestMethod = .get
}

struct FetchUserListResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [Datum]
    let support: Support
}

struct Datum: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

struct Support: Codable {
    let url: String
    let text: String
}
