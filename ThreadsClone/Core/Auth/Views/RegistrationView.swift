//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name = "";
    @State private var username = "";
    @State private var email = "";
    @State private var passwd = "";
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("ThreadsLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            VStack {
                TextField("Enter your name", text: $name)
                    .modifier(TextFieldModifier())
                TextField("Enter your username", text: $username)
                    .modifier(TextFieldModifier())
                TextField("Enter your email", text: $email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(TextFieldModifier())
                SecureField("Enter your password", text: $passwd)
                    .modifier(TextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .primaryButtomStyle()
            }
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack (spacing: 4) {
                    Text("Already have an account?")
                    Text("Log In")
                        .fontWeight(.semibold)
                }.font(.footnote)
                    .foregroundStyle(.black)
                    .padding(.top, 24)
            }
        }
        .padding()
    }
}

#Preview {
    RegistrationView()
}
