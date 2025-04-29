//
//  FollowingView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 29/04/25.
//

import SwiftUI

struct FollowingView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10, id: \.self) { i in
                FollowingPanel()
                Divider()
            }
        }
        .padding(.top, 15)
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}

#Preview {
    FollowingView()
}
