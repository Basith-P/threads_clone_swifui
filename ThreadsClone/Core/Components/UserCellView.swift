//
//  UserCellView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack {
            CircularImageView()
            
            VStack (alignment: .leading) {
                Text("kakashi90")
                    .fontWeight(.semibold)
                
                Text("Kakashi Hatake")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")                                     .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.systemGray4))
                }
        }
    }
}

#Preview {
    UserCellView()
}
