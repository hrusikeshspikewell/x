//
//  SideMenuManager.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 21/04/25.
//

import SwiftUI



class SideMenuManager: ObservableObject {
    @Published var isOpen: Bool = false
    @Published var path: [Route] = []
}
