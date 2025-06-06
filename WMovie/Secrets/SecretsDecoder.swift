//
//  SecretDecoder.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-07.
//

import Foundation

enum Secrets {
    static var apiKey: String {
        guard let key = Bundle.main.infoDictionary?["API_KEY"] as? String else {
            fatalError(#function + ": API_KEY not found in Info.plist")
        }
        return key
    }
}
