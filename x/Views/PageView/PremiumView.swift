//
//  PremiumView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct PremiumView: View {
    
    @State private var selectedIndex: Int = 0
    @State private var subscription: SubscriptionPlan = subscriptionPlans[0]
    @State private var showSheet: Bool = false


    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedIndex) {
                ForEach(subscriptionPlans.indices, id: \.self) { idx in
                    SubscriptionPanel(SubscriptionPlans: subscriptionPlans[idx])
                        .tag(idx)
//                        .padding(.vertical, 20)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .onChange(of: selectedIndex) { _, newValue in
                subscription = subscriptionPlans[newValue]
            }
            .padding(.horizontal)
            .padding(.bottom, 70)
            .navigationTitle("Subscribe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarRole(.editor)

            bottomBar
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .sheet(isPresented: $showSheet) {
            PurchaseSheet(subscription: subscription)
                .presentationDetents([.height(400)])
        }
    }

    private var bottomBar: some View {
        HStack {
            VStack(spacing: 0) {
                Text("Limited Time Offer")
                    .foregroundStyle(.white)
                    .font(.caption)
                Button {
                    showSheet = true
                } label: {
                    Text("Starting at \(String(format: "%.2f", subscription.monthlyPriceINR))")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
            }
        }
        .padding([.horizontal, .bottom])
        .background(Color.black)
        .zIndex(1)
    }
}

#Preview {
    PremiumView()
}
