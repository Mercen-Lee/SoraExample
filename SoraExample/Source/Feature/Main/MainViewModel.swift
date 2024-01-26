//
//  MainViewModel.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import Foundation
import Alamofire

class MainViewModel: ObservableObject {
    
    func createUser() async {
        do {
            let body = User(name: "Mercen", job: "Developer")
            let response = try await CreateUser(body: body)
                .request(decodeWith: CreateUserResponse.self)
            print(response)
        } catch let error {
            print(error)
        }
    }
}
