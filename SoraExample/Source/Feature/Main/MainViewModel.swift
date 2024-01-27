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
    
    func fetchUserList() async {
        do {
            let response = try await FetchUserList()
                .request(decodeWith: FetchUserListResponse.self)
            print(response)
        } catch let error {
            print(error)
        }
    }
    
    func updateUser() async {
        do {
            let body = User(name: "Mercen", job: "Developer")
            let response = try await UpdateUser(body: body)
                .request(decodeWith: UpdateUserResponse.self)
            print(response)
        } catch let error {
            print(error)
        }
    }
    
    func removeUser() async {
        do {
            try await RemoveUser().request()
        } catch let error {
            print(error)
        }
    }
}
