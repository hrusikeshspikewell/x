//
//  TimeLineSettings.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 24/04/25.
//


import SwiftUI

struct TimeLineSettings: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Nothing here yet")
                .padding(.vertical)
                .font(.title)
                .fontWeight(.bold)
            Text("Try pinning a list or a community to have eaiser access to the favorite content.")
                .font(.subheadline)
        }
        .padding(10)
        .navigationTitle("Timeline Settings")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}
