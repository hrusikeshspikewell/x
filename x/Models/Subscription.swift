//
//  Subscription.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 23/04/25.
//
import SwiftUI

struct SubscriptionPlan : Identifiable{
    var id: Int
    
    let name: String
    let monthlyPriceINR: Double
    let annualPriceINR: Double
    let replyBoost: String
    let Radar: Bool
    let EditPost: Bool
    let longerPost: Bool
    let BackgroundVideo: Bool
    let DownloadVideo: Bool
    let UsageLimit: String
    let UnlockDeepSearch: Bool
    let EarlyAccess: Bool
    let writeArticles: Bool
    let PaidPost: Bool
    let CreatorSubscription: Bool
    let xPro: Bool
    let MediaStudio: Bool
    let Analytics: Bool
    let hasVerifiedCheckmark: Bool
    let adFreeExperience: String
    let OptionalId: Bool
    let EncryptedMessage: Bool
    let HighlightsTab: Bool
    let BookMarke: Bool
    let AppIcon: Bool
    let CustomiseNavigation: Bool
}

let subscriptionPlans: [SubscriptionPlan] = [
    SubscriptionPlan(
        id: 1,
        name: "Basic",
        monthlyPriceINR: 244,
        annualPriceINR: 2590,
        replyBoost: "Smallest",
        Radar: false,
        EditPost: true,
        longerPost: true,
        BackgroundVideo: true,
        DownloadVideo: false,
        UsageLimit: "Standard",
        UnlockDeepSearch: false,
        EarlyAccess: false,
        writeArticles: false,
        PaidPost: false,
        CreatorSubscription: false,
        xPro: false,
        MediaStudio: false,
        Analytics: false,
        hasVerifiedCheckmark: false,
        
        adFreeExperience: "None",
        OptionalId: false,
        EncryptedMessage: true,
        HighlightsTab: false,
        BookMarke: true,
        AppIcon: false,
        CustomiseNavigation: false
    ),
    SubscriptionPlan(
        id: 2,
        name: "Premium",
        monthlyPriceINR: 650,
        annualPriceINR: 6800,
        replyBoost: "Larger",
        Radar: false,
        EditPost: true,
        longerPost: true,
        BackgroundVideo: true,
        DownloadVideo: true,
        UsageLimit: "Higher",
        UnlockDeepSearch: true,
        EarlyAccess: true,
        writeArticles: true,
        PaidPost: true,
        CreatorSubscription: true,
        xPro: false,
        MediaStudio: true,
        Analytics: true,
        hasVerifiedCheckmark: true,
        adFreeExperience: "Partial",
        OptionalId: true,
        EncryptedMessage: true,
        HighlightsTab: true,
        BookMarke: true,
        AppIcon: false,
        CustomiseNavigation: false
    ),
    SubscriptionPlan(
        id: 3,
        name: "Premium+",
        monthlyPriceINR: 1750,
        annualPriceINR: 18300,
        replyBoost: "Largest",
        Radar: true,
        EditPost: true,
        longerPost: true,
        BackgroundVideo: true,
        DownloadVideo: true,
        UsageLimit: "Maximum",
        UnlockDeepSearch: true,
        EarlyAccess: true,
        writeArticles: true,
        PaidPost: true,
        CreatorSubscription: true,
        xPro: true,
        MediaStudio: true,
        Analytics: true,
        hasVerifiedCheckmark: true,
        adFreeExperience: "Full",
        OptionalId: true,
        EncryptedMessage: true,
        HighlightsTab: true,
        BookMarke: true,
        AppIcon: true,
        CustomiseNavigation: true
    )
]

