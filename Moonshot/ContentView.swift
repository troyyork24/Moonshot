//
//  SwiftUIView.swift
//  Moonshot
//
//  Created by Troy York on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
var body: some View {
NavigationView {
    List(missions) { mission in
        NavigationLink(destination: Text("Detail view")) {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
            
            VStack(alignment: .leading) {
                Text(mission.displayName)
                    .font(.headline)
                Text(mission.launchDate ?? "N/A")
            }
        }
    }
}
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
