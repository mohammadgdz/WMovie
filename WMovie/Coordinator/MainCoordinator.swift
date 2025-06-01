//
//  MainCoordinator.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-01.
//

import SwiftUI

protocol Coordinator {
    func push(_ page: Pages)
    func present(_ sheet: Sheets)
    func pop()
    func popToRoot()
    func dismissSheet()
}

final class MainCoordinator: ObservableObject, Coordinator {
    @Published var path = NavigationPath()
    @Published var sheet: Sheets?
    @Published var pages: Pages?
    
    func push(_ page: Pages) {
        path.append(page)
    }
    
    func present(_ sheet: Sheets) {
        self.sheet = sheet
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
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
