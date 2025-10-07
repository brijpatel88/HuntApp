//
//  HuntStore.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import Foundation
import SwiftUI
import SwiftData

/// Observable store that manages all hunt items and game logic.
@Observable
class HuntStore {
    var items: [HuntItem] = []

    // MARK: - Initialization
    init() {
        // Preload 10 sample items
        items = [
            HuntItem(businessName: "Bean Scene Cafe", clue: "Find the best coffee downtown!"),
            HuntItem(businessName: "Movie Palace", clue: "A place where stories come alive."),
            HuntItem(businessName: "PageTurner Bookstore", clue: "Look for knowledge on Main Street."),
            HuntItem(businessName: "City Garden", clue: "Where nature meets the skyline."),
            HuntItem(businessName: "Pizza Plaza", clue: "Smell that cheese and dough!"),
            HuntItem(businessName: "Tech Hub", clue: "Find the gadgets of tomorrow."),
            HuntItem(businessName: "Fitness First", clue: "Push your limits and break a sweat."),
            HuntItem(businessName: "Artisan Bakery", clue: "Sweet smells from the oven."),
            HuntItem(businessName: "CineCorner", clue: "Grab your popcorn and watch!"),
            HuntItem(businessName: "Flower Bloom", clue: "Beauty blossoms here.")
        ]
    }

    // MARK: - Computed Properties
    var foundCount: Int {
        items.filter { $0.isFound }.count
    }

    // MARK: - Reward Logic
    var rewardDescription: String {
        switch foundCount {
        case 0..<5:
            return "No discount yet — keep hunting!"
        case 5..<7:
            return "🎉 Congrats! You earned a 10% discount!"
        case 7..<10:
            return "🌟 Great job! You earned a 20% discount!"
        default:
            return "🏆 Perfect! You get 20% off and entry in the $5000 draw!"
        }
    }
}
