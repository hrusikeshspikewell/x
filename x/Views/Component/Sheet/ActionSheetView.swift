//
//  ActonSheetView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct ActionSheetView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var actionResult: String
    @Binding var User: User

    var body: some View {
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
            .padding(.top, 20)
            HStack{
                Text("Accounts")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
            HStack{
                Image(User.avatarName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(20)
                VStack{
                    Text(User.name)
                        .font(.headline)
                    Text("@\(User.handle)")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.green)
            }

            HStack{
                Button(action: {
                    actionResult = "login"
                    dismiss()
                }) {
                    Text("Add Existing Account")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
            }
            HStack{
                Button(action: {
                    actionResult = "signup"
                    dismiss()
                }) {
                    Text("Add New Account")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            Spacer()
            
        }
        .padding()
    }
}
