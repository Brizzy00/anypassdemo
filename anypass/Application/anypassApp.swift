//
//  anypassApp.swift
//  anypass

import SwiftUI

@main
struct anypassApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            PageView()
        }
    }
}
