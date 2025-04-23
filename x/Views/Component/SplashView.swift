//
//  SplashView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//
import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
    }
}
