//
//  HomeView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI
import SlidingTabView

struct HomeView: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @State var selectedIndex: Int = 0
    @State var Tabs: [String] = ["For You", "Following"]
    @State var tweet: [Tweet] = tweets

    var body: some View {
        
        VStack(spacing: 0){
            SlidingTabView(selection: $selectedIndex, tabs: Tabs)
            
            ScrollView {
                VStack(spacing: 20) {
                    if(selectedIndex == 0){
                        ForEach(tweet) { tweet in
                            TweetRow(tweet: tweet)
                            Divider()
                        }
                    }else{
                        Text("Following Tweets")
                    }
                }
                .padding()
            }
            .refreshable {
                tweet = tweets.shuffled()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 40)
                }
                ToolbarItem(placement: .topBarLeading){
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
                        
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        menuManager.path.append(.timelineSettings)
                    } label: {
                        Image(systemName: "gear")
                            .resizable()
                            .foregroundStyle(.black)
                            .scaledToFit()
                            .frame(height: 30)
                            .cornerRadius(20)
                    }
                        
                }
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
            Divider()
        }
    }
}
