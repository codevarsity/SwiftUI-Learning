//
//  DestinationCardView.swift
//  TravelDestinations-SwiftUI
//
//  Created by Amit Gulati on 25/11/25.
//

import SwiftUI

struct DestinationCardView : View {
    var destination:Destination
    var width:CGFloat
    var height:CGFloat
    var body: some View {
        Image("\(destination.imageName)").resizable().frame(width:width, height: height).scaledToFill().clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

