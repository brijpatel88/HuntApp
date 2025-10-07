//
//  SubmissionService.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import Foundation

/// Represents the result returned from submitting hunt progress.
struct SubmissionResult: Codable {
    let success: Bool
    let message: String
}

/// A mock service for submitting hunt results (simulating server behavior).
class SubmissionService {

    /// Simulates uploading results to a mock endpoint.
    static func submitResults(foundCount: Int) async throws -> SubmissionResult {
        // Artificial delay to simulate a network call
        try await Task.sleep(nanoseconds: 1_000_000_000)

        if foundCount >= 5 {
            return SubmissionResult(success: true, message: "Results submitted successfully!")
        } else {
            return SubmissionResult(success: false, message: "Find at least 5 items to qualify!")
        }
    }
}
