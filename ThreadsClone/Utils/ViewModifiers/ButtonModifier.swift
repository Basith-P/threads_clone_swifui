//
//  ButtonModifier.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct PrimaryButtonModifer: ViewModifier {
    var verticalPadding: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.horizontal)
            .padding(.vertical, verticalPadding)
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(8)
    }
}


extension View {
    func primaryButtomStyle(verticalPadding: CGFloat = 16) -> some View {
        self.modifier(PrimaryButtonModifer(verticalPadding: verticalPadding))
    }
}
