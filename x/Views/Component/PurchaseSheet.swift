//
//  PurchaseSheet.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 24/04/25.
//

import SwiftUI

struct PurchaseSheet: View {
    let subscription: SubscriptionPlan
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
                    Text("\(subscription.name)")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                VStack{
                    HStack{
                        Text("Annual Plan")
                        Spacer()
                        Text("\(String(format: "%.2f", (subscription.annualPriceINR/12))) / month")
                            .fontWeight(.semibold)
                    }
                    HStack{
                        Text("\(String(format: "%.2f", subscription.annualPriceINR)) per year billed anually")
                            .font(.subheadline)
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(isSelected ? Color.black : Color.gray.opacity(0.3), lineWidth: isSelected ? 2 : 1)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(isSelected ? Color.black.opacity(0.1) : Color.white)
                        )
                )
                .onTapGesture {
                    isSelected = true
                }
                .animation(.easeInOut(duration: 0.2), value: isSelected)
                
                VStack{
                    HStack{
                        Text("Monthly Plan")
                        Spacer()
                        Text("\(String(format: "%.2f", (subscription.monthlyPriceINR))) / month")
                            .fontWeight(.semibold)
                    }
                    HStack{
                        Text("\(String(format: "%.2f", subscription.annualPriceINR * 12)) per year billed anually")
                            .font(.subheadline)
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(!isSelected ? Color.black : Color.gray.opacity(0.3), lineWidth: !isSelected ? 2 : 1)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(!isSelected ? Color.black.opacity(0.1) : Color.white)
                        )
                )
                .onTapGesture {
                    isSelected = false
                }
                .animation(.easeInOut(duration: 0.2), value: !isSelected)
                
                Spacer()
                
            }
            .padding()
            Button("Confirm & Pay") {
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
