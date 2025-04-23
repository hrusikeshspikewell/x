//
//  ExpandImageView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//
import SwiftUI

struct FullScreenImageViewer: View {
    let imageNames: [String]
    @Binding var currentIndex: Int
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.black.ignoresSafeArea()

            TabView(selection: $currentIndex) {
                ForEach(0..<imageNames.count, id: \.self) { idx in
                    Image(imageNames[idx])
                        .resizable()
                        .scaledToFit()
                        .tag(idx)
                        .ignoresSafeArea()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 30))
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}
