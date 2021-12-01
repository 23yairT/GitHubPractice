//
//  SignupView.swift
//  FinalProjects
//
//  Created by PMStudent on 11/12/21.
//

import SwiftUI

struct SignupView: View {
    
    @State var usernameSignup: String = ""
    @State var passwordSignup: String = ""
    
    var body: some View {
        ZStack {
            Color.accentColor.edgesIgnoringSafeArea(.all)
            VStack {
                userPictureView()
                signupTextView()
                TextField("Username", text: $usernameSignup)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $passwordSignup)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action: {print("Button tapped")}) {
                    signupButtonView()
                }
            }
            .padding()
        }
        
    }
}

struct signupTextView: View {
    var body: some View {
        Text("Sign Up")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct logoPictureView: View {
    var body: some View {
        Image("sun3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct signupButtonView: View {
    var body: some View {
        Text("Sign Up")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.yellow)
            .cornerRadius(15.0)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
