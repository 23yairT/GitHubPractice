//
//  OpeningScreenView.swift
//  FinalProjects
//
//  Created by PMStudent on 11/12/21.
//

import SwiftUI

struct OpeningScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.accentColor.edgesIgnoringSafeArea(.all)
                VStack {
                    WelcomeTextView()
                    NavigationLink(destination: LoginView()) {
                        alreadyHaveAccountButtonView()
                    }
                    NavigationLink(destination: SignupView()) {
                        createAccountButtonView()
                    }
                }
            }
        }
    }
}

struct createAccountButtonView: View {
    var body: some View {
        Text("Create Account")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.yellow)
            .cornerRadius(15.0)
    }
}

struct alreadyHaveAccountButtonView: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.yellow)
            .cornerRadius(15.0)
    }
}

struct WelcomeTextView: View {
    var body: some View {
        userPictureView()
        Text("Welcome")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}


struct OpeningScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningScreenView()
    }
}
