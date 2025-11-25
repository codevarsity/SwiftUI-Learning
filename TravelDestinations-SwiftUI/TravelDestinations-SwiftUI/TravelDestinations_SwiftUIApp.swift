//
//  TravelDestinations_SwiftUIApp.swift
//  TravelDestinations-SwiftUI
//
//  Created by Amit Gulati on 25/11/25.
//

import SwiftUI

@main
struct TravelDestinations_SwiftUIApp: App {
    var dataStore:DataStore = DataStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore)
        }
    }
}
