//
//  ScrollViewView.swift
//  Moonshot
//
//  Created by Troy York on 4/8/21.
//

import SwiftUI
struct CustomText: View {
    var text: String
    
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}
struct ScrollViewView: View {
var body: some View {
    ScrollView(.vertical) {
    VStack(spacing: 10) {
        ForEach(0..<100) {
            CustomText("Item \($0)")
                    .font(.title)
    }
    }
    .frame(maxWidth: .infinity)
    }
}
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
