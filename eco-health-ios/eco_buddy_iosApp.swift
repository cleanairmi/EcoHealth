//
//  eco_buddy_iosApp.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 09/20/23.
//

import SwiftUI

@main
struct eco_buddy_iosApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
