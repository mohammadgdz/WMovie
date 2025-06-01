//
//  Pages.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-01.
//

import Foundation

enum Tabs {
    case movies, series, settings
}

enum Pages: String, Identifiable {
    case login,
         createAccount,
         settings,
         movies,
         series,
         actor,
         movieDetails,
         seriesDetails
    
    var id: String{
        self.rawValue
    }

}

enum Sheets: String, Identifiable {
    case rating, review
    
    var id: String{
        self.rawValue
    }
}
