//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Apple on 01.11.2023.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            QuakesView()
                .environmentObject(quakesProvider)
        }
    }
}
