//
//  ListView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView{
                VStack(alignment: .center){
                    Spacer()
                    Text("You have not created or followed any list. When you create a list, it will appear here.")
                        .font(.subheadline)
                    Spacer()
                    
                }
                .padding()
            }
            HStack{
                Spacer()
                VStack{
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
                .padding(20)
                .background(
                    Circle()
                )
                
            }
            .padding(20)
            .zIndex(1)
        }
        
        .navigationTitle("Your List")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}

#Preview {
    ListView()
}
