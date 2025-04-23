//
//  PostTabView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct PostTabView: View {
    public var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(tweets) { tweet in
                    TweetRow(tweet: tweet)
                    Divider()
                }
            }
            .padding()
        }
        .refreshable{
            
        }
    }
}
