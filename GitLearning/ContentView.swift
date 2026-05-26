//
//  ContentView.swift
//  GitLearning
//
//  Created by 黒部恵吾 on 2026/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    Detailview()
                }, label: {
                    Text("An App To Learn Git")
                })
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
