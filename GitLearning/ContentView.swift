//
//  ContentView.swift
//  GitLearning
//
//  Created by 黒部恵吾 on 2026/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    @State private var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    showNavigation = true
                }, label: {
                    Text("Git Learning App")
                })
                Button(action: {
                    showSheet = true
                }, label: {
                    Text("show details")
                })
            }
            .padding()
            .sheet(isPresented: $showSheet,
                   content: {
                Detailview()
            })
            .navigationDestination(isPresented: $showNavigation) {
                Detailview()
            }
        }
    }
}

#Preview {
    ContentView()
}
