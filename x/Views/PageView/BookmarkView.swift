//
//  BookmarkView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct BookmarkView: View {
    public var body: some View {
        VStack(alignment: .leading){
            Text("Save Posts For Later")
                .font(.title)
                .fontWeight(.bold)
            Text("Bookmark posts to easily find them again in future.")
                .font(.subheadline)
        }
        .navigationTitle("Bookmarks")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}
