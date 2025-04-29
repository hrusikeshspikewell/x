//
//  FollowersView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 29/04/25.
//

import SwiftUI

struct FollowersView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<20, id: \.self) { i in
                FollowersPanel()
                Divider()
            }
        }
        .padding(.top, 20)
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}

#Preview {
    FollowersView()
}
