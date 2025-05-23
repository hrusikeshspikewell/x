//
//  TweetRow.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct TweetRow: View {
    let tweet: Tweet

    @State private var isRetweetTapped = false
    @State private var isLikeTapped = false

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(tweet.user.avatarName)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(tweet.user.name)
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                    Text("@\(tweet.user.handle)")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    Spacer()
                    Text(tweet.timestamp, style: .time)
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }

                Text(tweet.content)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 14))

                if let images = tweet.images, !images.isEmpty {
                    PostImageView(imageNames: images)
                        .cornerRadius(10)
                        .padding(.vertical, 4)
                }

                HStack(spacing: 50) {
                    
                    Image(systemName: "message")
                        .foregroundStyle(.gray)
                    
                    Button(action: {
                        isRetweetTapped.toggle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                            .foregroundColor(isRetweetTapped ? .blue : .gray)
                    }
                    
                    Button(action: {
                        isLikeTapped.toggle()
                    }) {
                        Image(systemName: isLikeTapped ? "heart.fill" : "heart")
                            .foregroundColor(isLikeTapped ? .red : .gray)
                    }
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.gray)
                }
                .font(.subheadline)
                .padding(.top, 4)
            }
        }
        .padding(0)
    }
}

#Preview {
    TweetRow(tweet: Tweet(user: User(name: "abc", handle: "abcd", avatarName: "Avatar"), content: "Hello World", timestamp: Date(), images: ["Post"] ))
}


