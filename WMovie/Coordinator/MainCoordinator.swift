//
//  MainCoordinator.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-01.
//

import SwiftUI

protocol Coordinator {
    func push(_ page: Pages, for tab: Tabs)
    func present(_ sheet: Sheets)
    func pop(for tab: Tabs)
    func popToRoot(for tab: Tabs)
    func dismissSheet()
}

final class MainCoordinator: ObservableObject, Coordinator {
    @Published var moviePath = NavigationPath()
    @Published var seriesPath = NavigationPath()
    @Published var settingsPath = NavigationPath()

    @Published var sheet: Sheets?
    
    func push(_ page: Pages, for tab: Tabs) {
        switch tab {
        case .movies:
            moviePath.append(page)
        case .series:
            seriesPath.append(page)
        case .settings:
            settingsPath.append(page)
        }
    }
    
    func pop(for tab: Tabs) {
        switch tab {
        case .movies:
            moviePath.removeLast()
        case .series:
            seriesPath.removeLast()
        case .settings:
            settingsPath.removeLast()
        }
    }
    
    func popToRoot(for tab: Tabs) {
        switch tab {
        case .movies:
            moviePath.removeLast(moviePath.count)
        case .series:
            seriesPath.removeLast(seriesPath.count)
        case .settings:
            settingsPath.removeLast(settingsPath.count)
        }
    }
    
    func present(_ sheet: Sheets) {
        self.sheet = sheet
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    @ViewBuilder
    func build(page: Pages) -> some View {
//        switch page {
//            
//        case .login:
//            break
//            
//        case .createAccount:
//            break
//            
//        case .settings:
//            break
//            
//        case .movies:
//            break
//            
//        case .series:
//            break
//            
//        case .actor:
//            break
//            
//        case .movieDetails:
//            break
//            
//        case .seriesDetails:
//            break
//            
//        }
    }
    
    
    @ViewBuilder
    func build(sheet: Sheets) -> some View {
//        switch sheet {
//            
//        case .rating:
//            break
//            
//        case .review:
//            break
//        }
    }
}
