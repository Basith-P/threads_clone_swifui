//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach( 0 ... 10, id: \.self) { thread in
                        ThreadItemView()
                    }
                }
                .padding()
            }
            .refreshable {
                print("Refreshing")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
