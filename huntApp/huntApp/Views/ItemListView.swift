//
//  ItemListView.swift
//  huntApp
//
//  Created by Brijesh Patel on 2025-10-06.
//

import SwiftUI

/// Displays the list of all 10 hunt items.
struct ItemsListView: View {
    @Bindable var store: HuntStore

    var body: some View {
        List(store.items) { item in
            NavigationLink(destination: ItemDetailView(item: item, store: store)) {
                VStack(alignment: .leading) {
                    Text(item.businessName)
                        .font(.headline)
                    Text(item.clue)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("Hunt Items")
    }
}
