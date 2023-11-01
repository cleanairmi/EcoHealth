//
//  AppDelegate.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 09/20/23.
//

import Firebase
import Foundation

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      print("Storage URL: \(PersistantStorage.shared.getSQLiteFileURL() as Any)")
      return true
  }
}
