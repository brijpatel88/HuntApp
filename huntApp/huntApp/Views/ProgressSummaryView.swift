//
//  ProgressSummaryView.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import SwiftUI

/// Shows the player's hunt progress and earned rewards.
struct ProgressSummaryView: View {
    @Bindable var store: HuntStore

    var body: some View {
        VStack(spacing: 20) {
            Text("Your Progress")
                .font(.largeTitle)
                .bold()

            Text("Found \(store.foundCount) / \(store.items.count) items")
                .font(.headline)

            Text(store.rewardDescription)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()

            ProgressView(value: Double(store.foundCount), total: Double(store.items.count))
                .progressViewStyle(.linear)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("Summary")
    }
}
