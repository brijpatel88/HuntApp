//
//  ContentView.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import SwiftUI

/// Main view that shows navigation to all app sections.
struct ContentView: View {
    @State private var store = HuntStore()

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("🏙️ Chamber of Commerce Hunt")
                    .font(.title)
                    .fontWeight(.bold)

                Text("Find all hidden items and win rewards!")
                    .foregroundColor(.gray)

                NavigationLink("Start Hunt", destination: ItemsListView(store: store))
                    .buttonStyle(.borderedProminent)

                NavigationLink("Progress Summary", destination: ProgressSummaryView(store: store))
                    .buttonStyle(.bordered)

                NavigationLink("Submit Results", destination: SubmissionView(store: store))
                    .buttonStyle(.bordered)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
