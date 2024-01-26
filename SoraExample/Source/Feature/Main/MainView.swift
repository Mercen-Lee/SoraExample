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
        Text("")
            .onAppear {
                Task {
                    await viewModel.createUser()
                }
            }
    }
}
