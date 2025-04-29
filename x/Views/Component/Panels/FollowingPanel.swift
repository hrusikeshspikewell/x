//
//  FollowingPanel.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 29/04/25.
//

import SwiftUI

public struct FollowingPanel: View {
    public var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image("Avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Name")
                            .font(.system(size: 16, weight: .bold))
                        Text("@handle")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Following")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.black)
                            .clipShape(Capsule())
                    }
                }
                
                Text("Description goes here. It can be a short bio or a few lines about the user.")
                    .font(.system(size: 14))
                    .foregroundColor(.primary)
                    .padding(.top, 2)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FollowingPanel()
}
