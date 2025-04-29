//
//  SubscribeSheet.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 25/04/25.
//

import SwiftUI

struct SubscribeSheet: View {
    @EnvironmentObject private var menuManager: SideMenuManager
    @Environment(\.dismiss) var dismiss
    @State var isSelected: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment:.leading, spacing: 10 ) {
                HStack{
                    Spacer()
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                    }
                }
                HStack{
                    Text("Subscribe Today")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                HStack{
                    Text("Subscribe to Premium to able to create a community")
                        .font(.subheadline)
                    Spacer()
                }
            }
            Button("Subscribe Today") {
                menuManager.path.append(.premium)
                dismiss()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(12)
            Button("Cancel") {
                dismiss()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}
