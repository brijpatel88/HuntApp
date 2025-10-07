//
//  AssetImagePicker.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//
import SwiftUI

struct AssetImagePicker: View {
    let assetNames = ["ArtisanBackery, BeanSceneCafe, BookStore, CineCorner, CityGarden, FitnessFirst, Flowerboom, MoviePlace, Pizza plaza, Tech Hub"] // 👈 Replace with your actual asset names
    @Binding var selectedImage: UIImage?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(assetNames, id: \.self) { name in
                    if let image = UIImage(named: name) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(12)
                            .shadow(radius: 4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(selectedImage == image ? Color.blue : Color.clear, lineWidth: 3)
                            )
                            .onTapGesture {
                                selectedImage = image
                            }
                    }
                }
            }
            .padding()
        }
    }
}
