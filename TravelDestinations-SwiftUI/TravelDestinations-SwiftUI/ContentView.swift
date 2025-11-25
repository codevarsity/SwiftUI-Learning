//
//  ContentView.swift
//  TravelDestinations-SwiftUI
//
//  Created by Amit Gulati on 25/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            DestinationsGridView()
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
