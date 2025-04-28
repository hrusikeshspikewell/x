//
//  SpaceCard.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 24/04/25.
//

import SwiftUI

struct SpaceCard: View {
    var body: some View {
        VStack {
            VStack{
                HStack{
                    Image(systemName: "wave.3.forward.circle")
                    Text("Live")
                    Spacer()
                    Image(systemName: "line.3.horizontal.decrease")
                }
                .padding()
                HStack{
                    Text("Network Like a Pro in WEB3")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
            }
            .background(Color.purple)
            VStack(spacing: 0){
                HStack{
                    Image("Avatar")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .cornerRadius(50)
                    Text("Name")
                    Text("Host")
                        .font(.caption)
                        .padding(4)
                        .background(Color.gray)
                        .cornerRadius(5)
                    Spacer()
                }
                .padding(.top)
                .padding(.horizontal)
                
                HStack{
                    Text("hjjdhsjhsdhfkjhskfjhkfhkjdhskfjhkdfjshk")
                        .font(.subheadline)
                    Spacer()
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.purple.gradient)
        }
        .background(Color.purple.gradient)
        .foregroundStyle(.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    SpaceCard()
}
