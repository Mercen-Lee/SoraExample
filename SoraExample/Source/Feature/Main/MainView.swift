//
//  MainView.swift
//  SoraExample
//
//  Created by Mercen on 1/27/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            Button("Create User") {
                Task {
                    await viewModel.createUser()
                }
            }
            Button("Fetch User List") {
                Task {
                    await viewModel.fetchUserList()
                }
            }
            Button("Update User") {
                Task {
                    await viewModel.updateUser()
                }
            }
            Button("Remove User") {
                Task {
                    await viewModel.removeUser()
                }
            }
        }
    }
}
