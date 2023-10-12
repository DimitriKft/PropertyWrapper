//
//  PropertyWrapperApp.swift
//  PropertyWrapper
//
//  Created by dimitri on 08/10/2023.
//

import SwiftUI

@main
struct PropertyWrapperApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserManager())
        }
    }
}
