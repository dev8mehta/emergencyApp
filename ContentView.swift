//
//  ContentView.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    let contacts = contactData().contacts

    var body: some View {
        TabView {
            profileView(user: contacts[3], contacts: contacts)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            .badge(2)

            profileView(user: contacts[3], contacts: contacts)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            .badge(2)
        }
        .foregroundColor(.customBackground)
    }
}

#Preview {
    ContentView()
}
