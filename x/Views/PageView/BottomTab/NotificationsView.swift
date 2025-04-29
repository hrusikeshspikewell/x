//
//  Notification.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct NotificationsView: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @State private var tweetList: [Tweet] = tweets

    @State private var selectedTab = 0
    let tabs = ["All", "Verified", "Mentions"]

    var body: some View {
        VStack {
            Picker("Tabs", selection: $selectedTab) {
                ForEach(0..<tabs.count, id: \.self) {
                    Text(self.tabs[$0])
                }
            }
            .pickerStyle(.segmented)
            .padding(.top)
            .padding(.horizontal)

            ScrollView {
                if selectedTab == 0 {
                    ForEach(tweetList) { tweet in
                        NotificationPanel(tweet: tweet) {
                            remove(tweet)
                        }
                        Divider()
                    }
                } else if selectedTab == 1 {
                    Text("Verified notification")
                } else {
                    Text("Mentioned notification")
                }
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button {
                        withAnimation {
                            menuManager.isOpen.toggle()
                        }
                    } label: {
                        Image("Avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .cornerRadius(20)
                    }
                    Text("Notifications")
                        .font(.title2)
                        .fontWeight(.bold)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        menuManager.path.append(.settings)
                    } label: {
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 25)
                            .foregroundColor(.black)
                    }
                }
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)

            Divider()
        }
    }

    private func remove(_ tweet: Tweet) {
        if let index = tweetList.firstIndex(where: { $0.id == tweet.id }) {
            tweetList.remove(at: index)
        }
    }
}
