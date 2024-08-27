//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 16) {
                    ForEach(0...10, id: \.self) { user in
                        VStack (spacing: 16) {
                            UserCellView()
                            Divider()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
