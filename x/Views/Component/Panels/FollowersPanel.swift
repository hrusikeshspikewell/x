//
//  FollowersPanel.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 29/04/25.
//

import SwiftUI

struct FollowersPanel: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            
            Image("Avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Name")
                        .font(.system(size: 16, weight: .bold))
                    
                    Text("@handle")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("Follow Back")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.black)
                            .clipShape(Capsule())
                    }
                }
                
                Text("Short bio or description goes here. It can be about interests, profession, etc.")
                    .font(.system(size: 14))
                    .foregroundColor(.primary)
                    .lineLimit(1)
            }
            
            
        }
        .padding(.horizontal)
    }
}

struct FollowersPanel_Previews: PreviewProvider {
    static var previews: some View {
        FollowersPanel()
    }
}

