//
//  AddView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct CommunityView: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @State private var selectedTab = 0
    @State private var showSheet: Bool = false
    let tabs = ["Home", "Explore"]

    var body: some View {
       
        VStack (spacing: 0){
            Picker("Tabs", selection: $selectedTab) {
                ForEach(0..<tabs.count, id: \.self) {
                    Text(self.tabs[$0])
                }
            }
            .pickerStyle(.segmented)
            .padding(.top)
            .padding(.horizontal)
            
            
            
            ScrollView{
                VStack(spacing: 20) {
                    if(selectedTab == 0){
                        ForEach(tweets) { tweet in
                            TweetRow(tweet: tweet)
                            Divider()
                        }
                    }else{
                        Text("Explore Tweets")
                    }
                }
                .padding()
            }
            
            
            
            
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
                    HStack{
                        Text("Communities")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .frame(height: 25)
                            .foregroundStyle(.black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "person.2")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 25)
                            .foregroundColor(.black)
                    }
                }
                
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .sheet(isPresented: $showSheet) {
                SubscribeSheet()
                    .presentationDetents([.height(300)])
            }
            
            Divider()
        }
    }

}

#Preview {
    CommunityView()
}
