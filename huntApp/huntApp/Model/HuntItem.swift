//
//  HuntItem.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//
import Foundation
import SwiftData
import UIKit

/// A model class for each scavenger hunt item.
/// SwiftData will store this data persistently.
@Model
class HuntItem {
    var id: UUID
    var businessName: String
    var clue: String
    var isFound: Bool
    var dateFound: Date?
    var photoData: Data?

    // MARK: - Initializer
    init(businessName: String, clue: String, isFound: Bool = false, dateFound: Date? = nil, photoData: Data? = nil) {
        self.id = UUID()
        self.businessName = businessName
        self.clue = clue
        self.isFound = isFound
        self.dateFound = dateFound
        self.photoData = photoData
    }

    // MARK: - Convert image to/from Data
    var photoImage: UIImage? {
        get { photoData.flatMap { UIImage(data: $0) } }
        set { photoData = newValue?.jpegData(compressionQuality: 0.8) }
    }
}


