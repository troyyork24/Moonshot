//
//  ContentView.swift
//  Moonshot
//
//  Created by Troy York on 4/8/21.
//

import SwiftUI

struct GeoReaderView: View {
var body: some View {
    VStack {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width)
        }
    }
}
}

struct GeoReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeoReaderView()
    }
}
