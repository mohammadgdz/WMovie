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
            
            NavigationStack(path: $coordinator.moviePath) {
                MoviesView()
            }
            .tabItem {
                Image(systemName: "film")
                Text("Movies")
            }
            
            NavigationStack(path: $coordinator.seriesPath) {
                SeriesView()
            }
            .tabItem {
                Image(systemName: "film.stack")
                Text("Series")
            }
            
            NavigationStack(path: $coordinator.profilePath) {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
            
        }
    }
}

#Preview {
    MainCoordinatorView()
}
