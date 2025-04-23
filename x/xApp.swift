//
//  xApp.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//


import SwiftUI

@main
struct xApp: App {
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            if showSplash {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showSplash = false
                            }
                        }
                    }
            } else {
                ContentView(User: User(name: "John", handle: "john", avatarName: "Avatar"))
            }
        }
    }
}
