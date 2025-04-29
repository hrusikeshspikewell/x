//
//  SideMenuView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var User: User
    @EnvironmentObject var menuManager: SideMenuManager
    @State private var showingSheet = false
    @State private var actionResult = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading){
                HStack{
                    Button(action: {
                        navigate(to: .profile)
                    }){
                        Image(User.avatarName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(50)
                    }
                    
                    
                    
                    Spacer()
                    Button(action:{
                        showingSheet = true
                    }){
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.black)
                    }
                }
                Text(User.name)
                    .font(.headline)
                Text("@\(User.handle)")
                    .font(.caption)
                    .foregroundStyle(.gray)
                HStack(spacing: 15){
                    HStack(spacing: 0){
                        Button(action:{
                            navigate(to: .followingView)
                        }){
                            Text("Following ")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Text("123")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        
                    }
                    HStack(spacing: 0){
                        Button(action:{
                            navigate(to: .followerView)
                        }){
                            Text("Followers ")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Text("123")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            Divider()
            Button(action: {
                navigate(to: .profile)
                    
            }) {
                
                HStack(spacing: 12) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Profile")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }
            Button(action: {
                navigate(to: .premium)
            }) {
                
                HStack(spacing: 12) {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Premium")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }

            Button(action: {
                navigate(to: .bookmark)
            }) {
                HStack(spacing: 12) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Bookmark")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }

            Button(action: {
                navigate(to: .list)
            }) {
                
                HStack(spacing: 12) {
                    Image(systemName: "list.clipboard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Lists")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }

            Button(action: {
                navigate(to: .spaces)
            }) {
                
                HStack(spacing: 12) {
                    Image(systemName: "microphone")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Spaces")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }

            Button(action: {
                navigate(to: .monetisation)
            }) {
                HStack(spacing: 12) {
                    Image(systemName: "dollarsign.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    Text("Monetisation")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }

            Divider()
                .padding(.vertical, 60)
            
            Button(action: {
                navigate(to: .settings)
            }) {
                HStack(spacing: 12) {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Text("Settings")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
            }
            
            Spacer()
            
//            Button(action: {
//                navigate(to: .dark)
//            }) {
//                Label("", systemImage: "moon.fill")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .foregroundStyle(.black)
//            }
        }
        .padding(.vertical, 65)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(UIColor.systemGray6))
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showingSheet) {
            ActionSheetView(actionResult: $actionResult, User: $User)
                            .presentationDetents([.height(300)])
        }
        
        
//      Confirmation Dialog
//
//        .confirmationDialog("Choose an action", isPresented: $showingActionSheet, titleVisibility: .visible) {
//            Button("Delete", role: .destructive) {
//                selectedAction = "Deleted"
//            }
//            Button("Edit") {
//                selectedAction = "Edited"
//            }
//            Button("Cancel", role: .cancel) {
//                selectedAction = "Cancelled"
//            }
//        }
    }

    private func navigate(to route: Route) {
        withAnimation {
            menuManager.path.append(route)
            menuManager.isOpen = false
            
        }
    }
    
}
