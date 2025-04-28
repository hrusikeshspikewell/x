//
//  ContentView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var User: User
    @StateObject private var menuManager = SideMenuManager()
    @State private var selectedSideMenuTab = 0
    
    private var menuWidth: CGFloat {
        UIScreen.main.bounds.width * 0.75
    }
    
    var body: some View {
        NavigationStack(path: $menuManager.path){
            ZStack(alignment: .leading) {
                TabView(selection: $selectedSideMenuTab) {
                    NavigationView { HomeView() }
                        .tag(0)
                        .tabItem { Image(systemName: "house"); Text("Home") }
                    
                    NavigationView { SearchView() }
                        .tag(1)
                        .tabItem { Image(systemName: "magnifyingglass"); Text("Search") }
                    
                    NavigationView { CommunityView() }
                        .tag(2)
                        .tabItem { Image(systemName: "person.2.fill"); Text("Community") }
                    
                    NavigationView { NotificationsView() }
                        .tag(3)
                        .tabItem { Image(systemName: "bell"); Text("Notifications") }
                        .badge(15)
                    
                    NavigationView { MessagesView() }
                        .tag(4)
                        .tabItem { Image(systemName: "envelope"); Text("Messages") }
                }
                
                .environmentObject(menuManager)
                
                
                if menuManager.isOpen {
                    Color.black.opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                menuManager.isOpen = false
                            }
                        }
                }
                
                SideMenuView(User: $User)
                    .frame(width: menuWidth)
                    .background(Color(UIColor.systemBackground))
                    .offset(x: menuManager.isOpen ? 0 : -menuWidth)
                    .zIndex(1)
                    .environmentObject(menuManager)
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .profile: ProfileView()
                case .premium: PremiumView()
                case .bookmark: BookmarkView()
                case .list: ListView()
                case .spaces: SpacesView()
                case .monetisation: MonetisationView()
                case .settings: SettingsView()
                case .dark: DarkModeView()
                case .timelineSettings: TimeLineSettings()
                }
            }
            .environmentObject(menuManager)
        }
        
    }
}



#Preview {
    ContentView(User: User(name: "John", handle: "john", avatarName: "Avatar"))
}
