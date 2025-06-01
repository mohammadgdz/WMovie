//
//  MainCoordinatorView.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-01.
//

import SwiftUI

struct MainCoordinatorView: View {
    @StateObject private var coordinator = MainCoordinator()
    @State private var selectedTab: Tabs = .movies
    
    var body: some View {
        TabView(selection: $selectedTab)  {
            
            
        }
    }
}

#Preview {
    MainCoordinatorView()
}
