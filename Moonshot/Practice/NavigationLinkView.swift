//
//  NavigationLinkView.swift
//  Moonshot
//
//  Created by Troy York on 4/8/21.
//

import SwiftUI

struct NavigationLinkView: View {
var body: some View {
    Button("Decode JSON") {
        let input = """
    {
        "name" : "Taylor Swift",
        "address" : {
            "street" : "555, Taylor Swift Avenue",
            "city" : "Nashville"
    }
    }
"""
        
        let data = Data(input.utf8)
        let decoder = JSONDecoder()
        if let user = try? decoder.decode(User.self, from: data) {
            print(user.address.street)
    }
    }
}
}
struct User: Codable {
    var name: String
    var address: Address
   
}
struct Address: Codable {
    var street: String
    var city: String
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
