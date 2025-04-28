//
//  MonetisationView.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//

import SwiftUI

struct MonetisationView: View {
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){
                Text("Make money on X")
                    .font(.title)
                    .fontWeight(.bold)
                    
                Text("The first step to monetization is getting verified with X Premium.")
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .navigationTitle("Monetization")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackgroundVisibility(.visible)
        .toolbarRole(.editor)
    }
}

#Preview {
    MonetisationView()
}
