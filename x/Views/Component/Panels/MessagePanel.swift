//
//  MessagePanel.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 25/04/25.
//

import SwiftUI

struct MessagePanel: View {
    var body: some View {
        HStack(spacing:10){
            VStack{
                Image("Avatar")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            }
            VStack {
                HStack{
                    VStack(alignment: .leading){
                        HStack {
                            Text("Name")
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                            Text("@Handel")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            Spacer()
                            Text("10:26 PM")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                        }
                        HStack{
                            Text("Message")
                        }
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    MessagePanel()
}
