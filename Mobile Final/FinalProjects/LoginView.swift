//
//  LoginView.swift
//  FinalProjects
//
//  Created by PMStudent on 11/12/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    
    @State var usernameLogin: String = ""
    @State var passwordLogin: String = ""
    
    var body: some View {
        ZStack {
            Color.accentColor.edgesIgnoringSafeArea(.all)
            VStack {
                userPictureView()
                loginTextView()
                TextField("Username", text: $usernameLogin)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $passwordLogin)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action: {print("Button tapped")}) {
                    loginButtonView()
                }
            }
            .padding()
        }
    }
}

struct loginTextView: View {
    var body: some View {
        Text("Login")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct userPictureView: View {
    var body: some View {
        Image("sun3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 5)
    }
}

struct loginButtonView: View {
    var body: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.yellow)
            .cornerRadius(15.0)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

