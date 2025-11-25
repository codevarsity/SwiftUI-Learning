//
//  DataStore.swift
//  TravelDestinations-SwiftUI
//
//  Created by Amit Gulati on 25/11/25.
//
import SwiftUI

@Observable
class DataStore {
    var topBeaches:[Destination] = []
    var topMountains:[Destination] = []
    var topUrban:[Destination] = []

    var destinationsData = DestinationsData()
    
    init() {
        topBeaches = destinationsData.destinations(for: .beach)
        topMountains = destinationsData.destinations(for: .mountains)
        topUrban = destinationsData.destinations(for: .urban)

    }
    
}
