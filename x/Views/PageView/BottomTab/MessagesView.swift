//
//  MessagesView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct MessagesView: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @State private var searchText = ""
    var body: some View {
        VStack(spacing: 0){
            ScrollView{
                ForEach(0..<100, id: \.self) { i in
                    MessagePanel()
                    Divider()
                }
            }
            .padding(.top, 10)
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
                    
                    HStack (spacing: 0){
                        TextField("Search Direct Messages", text: $searchText)
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
            
            Divider()
        }
    }
}
