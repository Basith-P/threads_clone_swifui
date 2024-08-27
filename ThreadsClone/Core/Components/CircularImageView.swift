//
//  CircularImageView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct CircularImageView: View {
    var size: CGFloat = 40
    
    var body: some View {
        Image("Kakashi")
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size )
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircularImageView()
}
