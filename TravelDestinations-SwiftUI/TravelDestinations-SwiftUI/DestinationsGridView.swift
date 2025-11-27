//
//  TravelDestinations.swift
//  TravelDestinations-SwiftUI
//
//  Created by Amit Gulati on 25/11/25.
//

import SwiftUI

struct DestinationsGridView: View {
    @Environment(DataStore.self) var dataStore
    
    var topBeachesGrid:[GridItem] = [
        GridItem(.flexible(minimum: 200, maximum:.infinity))]
    var topMountainsGrid:[GridItem] = [
        GridItem(.flexible(minimum: 200, maximum:.infinity))]
    var topUrbanGrid:[GridItem] = [
        GridItem(.flexible(minimum: 200, maximum:.infinity))]
    
    var body: some View {
        GeometryReader {geometry in
            ScrollView(.vertical) {
                generateSection1(geometry: geometry)
                generateSection2(geometry: geometry)
                generateSection3(geometry: geometry)
            }
        }.scrollIndicators(.hidden)
        .navigationTitle("Destinations")
        .navigationBarTitleDisplayMode(.large)
    }
    
    func generateSection1(geometry: GeometryProxy)->some View {
        Section {
            ScrollView (.horizontal){
                LazyHGrid(rows:topBeachesGrid) {
                    ForEach (dataStore.topBeaches, id: \.id) { destination in
                        DestinationCardView(destination: destination, width: geometry.size.width.scaled(by: 0.9), height: 300)
                    }
                }
            }.scrollIndicators(.hidden)
                .padding(.bottom, 25)
        
        } header: {
            VStack(alignment: .leading){
                Text("Top Beach Destinations").font(.system(.title2)).bold()
            }.frame(maxWidth:.infinity, maxHeight: 44,alignment: .leading)

        }
    }
    
    func generateSection2(geometry: GeometryProxy) -> some View {
        Section {
            ScrollView (.horizontal){
                LazyHGrid(rows:topMountainsGrid) {
                    ForEach (dataStore.topMountains, id: \.id) { destination in
                        DestinationCardView(destination: destination, width: geometry.size.width, height: 200)
                    }
                }
            }.scrollIndicators(.hidden)
                .padding(.bottom, 25)
        } header: {
            VStack(alignment: .leading){
                Text("Top Mountain Destinations").font(.system(.title2)).bold()
            }.frame(maxWidth:.infinity, maxHeight: 44,alignment: .leading)
        }
    }
    
    func generateSection3(geometry: GeometryProxy) -> some View {
        Section {
            LazyVGrid(columns:topUrbanGrid) {
                ForEach (dataStore.topUrban, id: \.id) { destination in
                    DestinationCardView(destination: destination, width: geometry.size.width, height: 150)
                }
            }
        } header: {
            VStack(alignment: .leading){
                Text("Top Urban Destinations").font(.system(.title2)).bold()
            }.frame(maxWidth:.infinity, maxHeight: 44,alignment: .leading)
        }
    }
    
    
}


#Preview {
    var dataStore:DataStore = DataStore()
    DestinationsGridView().environment(dataStore)
}
