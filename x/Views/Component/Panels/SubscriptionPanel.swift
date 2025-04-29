//
//  SubscriptionPanel.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 23/04/25.
//

import SwiftUI

struct SubscriptionPanel: View {var SubscriptionPlans: SubscriptionPlan
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView(showsIndicators: false){
                HStack{
                    Text(SubscriptionPlans.name)
                }
                .padding(20)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .frame(width: 350, height: 100)
                .background(Color.primary.gradient)
                .cornerRadius(10)
                
                VStack{
                    HStack{
                        Text("Enhance Experience")
                        Spacer()
                    }
                    .padding(.vertical, 5)
                    VStack{
                        HStack{
                            Text("Ads")
                            Spacer()
                            Text(SubscriptionPlans.adFreeExperience)
                        }
                        HStack{
                            Text("Reply Boost")
                            Spacer()
                            Text(SubscriptionPlans.replyBoost)
                        }
                        HStack{
                            Text("Radar")
                            Spacer()
                            Image(systemName: SubscriptionPlans.Radar ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Edit Post")
                            Spacer()
                            Image(systemName: SubscriptionPlans.EditPost ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Longer Post")
                            Spacer()
                            Image(systemName: SubscriptionPlans.longerPost ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Background Video Playback")
                            Spacer()
                            Image(systemName: SubscriptionPlans.BackgroundVideo ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Download Videos")
                            Spacer()
                            Image(systemName: SubscriptionPlans.DownloadVideo ? "checkmark" : "lock")
                        }
                    }
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .frame(width: 350)
                .background(Color.primary.gradient)
                .cornerRadius(10)
                
                VStack{
                    HStack{
                        Text("Grok AI")
                        Spacer()
                    }
                    .padding(.vertical, 5)
                    VStack{
                        HStack{
                            Text("User Limts")
                            Spacer()
                            Text(SubscriptionPlans.UsageLimit)
                        }
                        HStack{
                            Text("Unlock DeepSearch & Think")
                            Spacer()
                            Image(systemName: SubscriptionPlans.UnlockDeepSearch ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Early access to new features")
                            Spacer()
                            Image(systemName: SubscriptionPlans.EarlyAccess ? "checkmark" : "lock")
                        }
                    }
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .frame(width: 350)
                .background(Color.primary.gradient)
                .cornerRadius(10)
                VStack{
                    HStack{
                        Text("Verification & Security")
                        Spacer()
                    }
                    .padding(.vertical, 5)
                    VStack{
                        HStack{
                            Text("Tick")
                            Spacer()
                            Image(systemName: SubscriptionPlans.hasVerifiedCheckmark ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Optional ID Verification")
                            Spacer()
                            Image(systemName: SubscriptionPlans.OptionalId ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Encrypted Direct Messages")
                            Spacer()
                            Image(systemName: SubscriptionPlans.EncryptedMessage ? "checkmark" : "lock")
                        }
                    }
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .frame(width: 350)
                .background(Color.primary.gradient)
                .cornerRadius(10)
                
                VStack{
                    HStack{
                        Text("Customization")
                        Spacer()
                    }
                    .padding(.vertical, 5)
                    VStack{
                        HStack{
                            Text("Highlights Tab")
                            Spacer()
                            Image(systemName: SubscriptionPlans.HighlightsTab ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Bookmark Folders")
                            Spacer()
                            Image(systemName: SubscriptionPlans.BookMarke ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("App Icons")
                            Spacer()
                            Image(systemName: SubscriptionPlans.AppIcon ? "checkmark" : "lock")
                        }
                        HStack{
                            Text("Customize Navigation")
                            Spacer()
                            Image(systemName: SubscriptionPlans.CustomiseNavigation ? "checkmark" : "lock")
                        }
                    }
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .frame(width: 350)
                .background(Color.primary.gradient)
                .cornerRadius(10)
                Spacer()
                VStack{
                    Text("")
                        .frame(height: 60)
                }
            }
            
        }
        
    }
}

#Preview {
    SubscriptionPanel(SubscriptionPlans: subscriptionPlans[1])
}
