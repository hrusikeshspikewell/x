//
//  PremiumView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

//import SwiftUI
//
//struct PremiumView: View {
//    @State var subscription: SubscriptionPlan
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            ScrollView(.horizontal, showsIndicators: false){
//                HStack(spacing: 15){
//                    ForEach(subscriptionPlans){sub in
//                        SubscriptionPanel(SubscriptionPlans: sub)
//                    }
//                }
//                .padding(.horizontal)
//            
//                
//            }
//            .navigationTitle("Subscribe")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbarBackgroundVisibility(.visible)
//            .toolbarRole(.editor)
//            
//            HStack{
//                VStack(spacing:0){
//                    Text("Limited Time Offer")
//                        .foregroundStyle(.white)
//                        .font(.caption)
//                    Button(action: {
//                        
//                    }) {
//                        Text("Starting at \(subscription.monthlyPriceINR.isNaN ? "0" : String(format: "%.2f", subscription.monthlyPriceINR))")
//                            .frame(maxWidth: .infinity)
//                            .padding()
//                            .background(Color.white)
//                            .foregroundColor(.black)
//                            .cornerRadius(20)
//                    }
//                }
//                
//
//            }
//            .padding(.horizontal)
//            .padding(.bottom)
//            .background(.black)
//            .zIndex(1)
//        }
//        .ignoresSafeArea(.all, edges: .bottom)
//    }
//}
//
//#Preview {
//    PremiumView(subscription: subscriptionPlans[0])
//}




import SwiftUI

struct PremiumView: View {
    @State var subscription: SubscriptionPlan

    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(subscriptionPlans.indices, id: \.self) { index in
                        SubscriptionPanelWrapper(index: index, subscription: subscriptionPlans[index])
                            .frame(width: 350)
                    }
                }
                .padding(.horizontal)
            }
            .onPreferenceChange(CenteredSubscriptionPreferenceKey.self) { values in
                if let closestIndex = values.min(by: { $0.value < $1.value })?.key {
                    subscription = subscriptionPlans[closestIndex]
                }
            }
            .navigationTitle("Subscribe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackgroundVisibility(.visible)
            .toolbarRole(.editor)

            HStack {
                VStack(spacing: 0) {
                    Text("Limited Time Offer")
                        .foregroundStyle(.white)
                        .font(.caption)

                    Button(action: {

                    }) {
                        Text("Starting at \(subscription.monthlyPriceINR.isNaN ? "0" : String(format: "%.2f", subscription.monthlyPriceINR))")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .background(.black)
            .zIndex(1)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    
    struct CenteredSubscriptionPreferenceKey: PreferenceKey {
        static var defaultValue: [Int: CGFloat] = [:]

        static func reduce(value: inout [Int: CGFloat], nextValue: () -> [Int: CGFloat]) {
            value.merge(nextValue(), uniquingKeysWith: { $1 })
        }
    }

    struct SubscriptionPanelWrapper: View {
        let index: Int
        let subscription: SubscriptionPlan

        var body: some View {
            SubscriptionPanel(SubscriptionPlans: subscription)
                .background(
                    GeometryReader { geo in
                        let midX = geo.frame(in: .global).midX
                        let screenMidX = UIScreen.main.bounds.midX
                        let distance = abs(midX - screenMidX)
                        Color.clear.preference(
                            key: CenteredSubscriptionPreferenceKey.self,
                            value: [index: distance]
                        )
                    }
                )
        }
    }
    
}

#Preview {
    PremiumView(subscription: subscriptionPlans[0])
}
