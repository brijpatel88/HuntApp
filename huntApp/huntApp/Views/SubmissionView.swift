//
//  SubmissionView.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//
import SwiftUI

/// Lets the user submit results and shows confirmation.
struct SubmissionView: View {
    @Bindable var store: HuntStore
    @State private var resultMessage = ""
    @State private var isSubmitting = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Submit Your Hunt Results")
                .font(.title2)
                .bold()

            Text("You found \(store.foundCount) / \(store.items.count) items")

            if isSubmitting {
                ProgressView("Submitting...")
            } else {
                Button("Submit Results") {
                    Task {
                        await submit()
                    }
                }
                .buttonStyle(.borderedProminent)
            }

            Text(resultMessage)
                .foregroundColor(.blue)
                .padding()
            Spacer()
        }
        .padding()
        .navigationTitle("Submit")
    }

    // MARK: - Submission Logic
    func submit() async {
        isSubmitting = true
        do {
            let result = try await SubmissionService.submitResults(foundCount: store.foundCount)
            resultMessage = result.message
        } catch {
            resultMessage = "❌ Submission failed."
        }
        isSubmitting = false
    }
}
