//
//  SpacesView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct SpacesView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<100, id: \.self) { i in
                SpaceCard()
            }
            
        }
        .padding(.top, 10)
        .navigationTitle("Spaces")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}
