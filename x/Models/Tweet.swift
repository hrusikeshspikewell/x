//
//  Tweet.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//


import SwiftUI

struct Tweet: Identifiable {
    let id = UUID()
    let user: User
    let content: String
    let timestamp: Date
    let images: [String]?
}
