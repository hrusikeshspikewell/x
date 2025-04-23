//
//  User.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
    let handle: String
    let avatarName: String
}
