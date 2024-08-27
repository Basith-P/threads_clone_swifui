//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = "";
    @State private var passwd = "";
     
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("ThreadsLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(TextFieldModifier())
                    SecureField("Enter your password", text: $passwd)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Log In")
                        .modifier(PrimaryButtonModifer())
                }
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Register View")
                } label: {
                    HStack (spacing: 4) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                        .foregroundStyle(.black)
                        .padding(.top, 24)
                }
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
