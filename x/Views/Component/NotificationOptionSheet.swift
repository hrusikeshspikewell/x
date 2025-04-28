//
//  NotificationOptionSheet.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 25/04/25.
//

import SwiftUI

struct NotificationOptionsSheet: View {
    @Environment(\.dismiss) var dismiss
    @Binding var isPresented: Bool
    let onRemove: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark")
                        .foregroundStyle(.black)
                }
            }

            Button("Remove Notification") {
                onRemove()
                isPresented = false
                dismiss()
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .presentationDetents([.height(110)])
    }
}
