//
//  huntAppApp.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//


import SwiftUI
import SwiftData

@main
struct HuntAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: HuntItem.self)
        }
    }
}
