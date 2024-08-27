//
//  ThreadItemView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct ThreadItemView: View {
    var body: some View {
        VStack {
            HStack (alignment: .top, spacing: 12) {
                Image("Kakashi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text("kakashi90")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    Text("I'm a Ninja")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack (spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .padding(.vertical, 8)
                    .foregroundStyle(.black)
                    
                }
            }
            
            Divider()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ThreadItemView()
        .padding()
}
