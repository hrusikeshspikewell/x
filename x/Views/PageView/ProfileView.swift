import SwiftUI
import SlidingTabView

struct ProfileView: View {
    @State var selectedIndex: Int = 0
    @State var Tabs: [String] = ["Posts", "Replies", "Highlights", "Articles", "Media", "Likes"]
    var body: some View {
        ZStack (alignment: .top){
            ScrollView {
                ZStack(alignment: .top){
                    VStack {
                        HStack {
                            Image("Post")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                                .padding(.top,60)
                                
                        }
                        
                        VStack{
                            HStack(){
                                Text("Name")
                                    .font(.largeTitle)
                                Spacer()
                            }
                            HStack(){
                                Text("@Handel")
                                    .font(.subheadline)
                                    .foregroundStyle(.gray)
                                Spacer()
                            }
                        }
                        .padding()
                    }
                }
                HStack {
                    Image("Avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 90)
                        .padding(5)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 0.5)
                        )
                        .padding(8)

                    Spacer()
                }
                .padding(.top,-190)
                .zIndex(1)
                
                
                VStack(alignment: .leading) {
                    HStack{
                        HStack{
                            Image(systemName: "location")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundStyle(.black)
                                .frame(width: 15, height: 15)
                            Text("Location")
                                .font(.system(size: 12))
                            Spacer()
                        }
                        HStack{
                            Image(systemName: "birthday.cake")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundStyle(.black)
                                .frame(width: 15, height: 15)
                            Text("Born ")
                                .font(.system(size: 12))
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.black)
                            .frame(width: 15, height: 15)
                        Text("Joined ")
                            .font(.system(size: 12))
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack(spacing: 15){
                        HStack(spacing: 0){
                            Text("Following ")
                                .font(.subheadline)
                            Text("123")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        HStack(spacing: 0){
                            Text("Followers ")
                                .font(.subheadline)
                            Text("253")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
                
                
                ScrollView(.horizontal, showsIndicators: false){
                        
                    SlidingTabView(selection: $selectedIndex, tabs: Tabs)
                        .frame(width: 600)
                    
                }
                VStack{
                    switch selectedIndex {
                        case 0:
                            PostTabView()
                        case 1:
                            Text("Tab 2")
                        case 2:
                            Text("Tab 3")
                        case 3:
                            Text("Tab 4")
                        case 4:
                            Text("Tab 5")
                        case 5:
                            Text("Tab 6")
                        default:
                            Text("Not Available")
                    }
                }
                .frame(height: 700)
                    
                
            }
            .ignoresSafeArea()
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackgroundVisibility(.visible)
            .toolbarRole(.editor)
            
        }
            
            
        
    }
}

#Preview {
    ProfileView()
}
