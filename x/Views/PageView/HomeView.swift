//
//  HomeView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var menuManager: SideMenuManager

    var body: some View {
        
        VStack(spacing: 0){
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(tweets) { tweet in
                        TweetRow(tweet: tweet)
                        Divider()
                    }
                }
                .padding()
            }
            .refreshable {
                
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
                        menuManager.path.append(.settings)
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
