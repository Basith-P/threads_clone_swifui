//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack (spacing: 20) {
                HStack (alignment: .top) {
                // Bio And Stats
                    VStack (alignment: .leading, spacing: 12) {
                        // Name and Username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("chare_les")
                                .font(.subheadline)
                        }
                        
                        Text("The ninja assasin")
                            .font(.footnote)
                        
                        Text("4 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    CircularImageView(size: 70)
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .primaryButtomStyle(verticalPadding: 8)
                }
                
                // User Content
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if (selectedFilter == filter) {
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.black)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.clear)
                                }
                            }
                            .onTapGesture {
                                withAnimation (.spring){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    .font(.subheadline)
                    
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) { thread in
                                ThreadItemView()
                        }
                    }
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
