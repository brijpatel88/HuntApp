//
//  ItemDetailView.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import SwiftUI

/// Shows clue details and allows the user to upload a photo when item is found.
struct ItemDetailView: View {
    var item: HuntItem
    @Bindable var store: HuntStore
    @State private var showPicker = false
    @State private var image: UIImage?

    var body: some View {
        VStack(spacing: 20) {
            Text(item.businessName)
                .font(.title2)
                .bold()

            Text(item.clue)
                .foregroundColor(.secondary)
                .padding()

            if let photo = item.photoImage {
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

            Button("📸 Take or Select Photo") {
                showPicker = true
            }
            .buttonStyle(.borderedProminent)

            Button("Mark as Found") {
                if let img = image {
                    item.photoImage = img
                }
                item.isFound = true
                item.dateFound = Date()
            }
            .disabled(image == nil)
            .buttonStyle(.bordered)
        }
        .sheet(isPresented: $showPicker) {
            ImagePicker(image: $image)
        }
        .padding()
        .navigationTitle("Item Detail")
    }
}
