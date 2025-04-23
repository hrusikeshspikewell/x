//  PostImageView.swift
//  x
//
//  Created by Hrusikesh‑Spikewell on 21/04/25.
//

import SwiftUI

struct PostImageView: View {
    let imageNames: [String]
    let spacing: CGFloat = 4

    
    @State private var isFullScreen = false
    @State private var fullScreenIndex = 0

    var body: some View {
        Group {
            switch imageNames.count {
            case 1:
                imageView(at: 0)
                    .frame(width: 260, height: 230)

            case 2:
                HStack(spacing: spacing) {
                    ForEach(0..<2, id: \.self) { idx in
                        imageView(at: idx)
                            .frame(width: 130, height: 230)
                            .clipped()
                    }
                }

            case 3:
                HStack(spacing: spacing) {
                    imageView(at: 0)
                        .frame(width: 200, height: 230)
                        .clipped()

                    VStack(spacing: spacing) {
                        ForEach(1...2, id: \.self) { idx in
                            imageView(at: idx)
                                .frame(width: 60, height: 113)
                                .clipped()
                        }
                    }
                }

            case 4:
                Grid {
                    GridRow {
                        ForEach(0...1, id: \.self) { idx in
                            imageView(at: idx)
                                .frame(width: 130, height: 115)
                                .clipped()
                        }
                    }
                    GridRow {
                        ForEach(2...3, id: \.self) { idx in
                            imageView(at: idx)
                                .frame(width: 130, height: 115)
                                .clipped()
                        }
                    }
                }

            default:
                let displayed = Array(imageNames.prefix(4))
                Grid(horizontalSpacing: spacing, verticalSpacing: spacing) {
                    GridRow {
                        ForEach(0..<2) { idx in imageCell(at: idx, in: displayed) }
                    }
                    GridRow {
                        ForEach(2..<4) { idx in imageCell(at: idx, in: displayed) }
                    }
                }
                .cornerRadius(10)
                .padding(.vertical, 4)
            }
        }
        
        .fullScreenCover(isPresented: $isFullScreen) {
            FullScreenImageViewer(
                imageNames: imageNames,
                currentIndex: $fullScreenIndex
            )
        }
    }

    
    private func imageView(at idx: Int) -> some View {
        let name = imageNames[idx]
        return Image(name)
            .resizable()
            .scaledToFill()
            .clipped()
            .onTapGesture {
                fullScreenIndex = idx
                isFullScreen = true
            }
    }

    
    
    @ViewBuilder
    private func imageCell(at idx: Int, in displayed: [String]) -> some View {
        let name = displayed[idx]
        ZStack {
            Image(name)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 115)
                .clipped()
            
            if idx == 3 && imageNames.count > 4 {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 130, height: 115)
                    .cornerRadius(5)
                Text("+\(imageNames.count - 4)")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
            }
        }
        .cornerRadius(5)
        .onTapGesture {
            fullScreenIndex = idx
            isFullScreen = true
        }
    }
}

