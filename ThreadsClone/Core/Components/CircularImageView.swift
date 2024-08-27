//
//  CircularImageView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("Kakashi")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40 )
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircularImageView()
}
