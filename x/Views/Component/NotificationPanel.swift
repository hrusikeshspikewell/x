//
//  NotificationPanel.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 25/04/25.
//

import SwiftUI

struct NotificationPanel: View {
    let tweet: Tweet
    let onRemove: () -> Void

    @State private var isSheetPresented = false

    var body: some View {
        HStack {
            VStack {
                Image(systemName: "bell")
                    .font(.title)
                Spacer()
            }

            VStack(alignment: .leading) {
                Image("Avatar") 
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(15)
                Text(tweet.user.name)
                    .font(.title3)
                Text(tweet.content)
                    .font(.caption)
                    .lineLimit(1)
            }

            Spacer()

            VStack {
                Button {
                    isSheetPresented.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.top, 5)
        .sheet(isPresented: $isSheetPresented) {
            NotificationOptionsSheet(isPresented: $isSheetPresented, onRemove: {
                onRemove()
            })
        }
    }
}




