//
//  ContentView.swift
//  Birthdays app
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends : [Friend] = [Friend(name:"Lennon Nichols", birthday: .now), Friend(name: "Lena", birthday: .now)]
    
    
    var body: some View {
        NavigationStack{
            List(friends, id: \.name) { friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                } //hstack
            } //list
            .navigationTitle("Birthdays")
        } //nav
    } //body
} //struct

#Preview {
    ContentView()
}
