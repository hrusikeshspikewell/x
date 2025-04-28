//
//  SearchView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI
import SlidingTabView

struct SearchView: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @State private var searchText = ""
    @State var selectedIndex: Int = 0
    @State var Tabs: [String] = ["For You", "Trending", "News", "Sports", "Entertainment"]
    
    var body: some View {
        VStack(spacing: 0){
            ScrollView(.horizontal, showsIndicators: false){
                
                SlidingTabView(selection: $selectedIndex, tabs: Tabs)
                    .frame(width: 600, height: 60)
                
            }
            VStack{
                switch selectedIndex {
                case 0:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                case 1:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                case 2:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                case 3:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                case 4:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                case 5:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                default:
                    Text("Nothing here \(Tabs[selectedIndex])")
                        .font(.title)
                        
                }
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
                    
                    HStack (spacing: 0){
                        TextField("Search", text: $searchText)
                            .padding(10)
                            .background(Color(.systemGray5))
                            .frame(width: 230, height: 35)
                            .cornerRadius(8)
                            .overlay(
                                HStack {
                                    Spacer()
                                    if !searchText.isEmpty {
                                        Button(action: {
                                            searchText = ""
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.trailing, 8)
                                    }
                                }
                            )
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .font(.system(size: 27))
                                .frame(height: 35)
                                .foregroundColor(.black)
                        }
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        menuManager.path.append(.settings)
                    } label: {
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(.black)
                    }
                }
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            Spacer()
            Divider()
        }
    }
}

#Preview {
    SearchView()
}
