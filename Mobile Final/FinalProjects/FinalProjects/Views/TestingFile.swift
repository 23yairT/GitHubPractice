//
//  TestingFile.swift
//  FinalProjects
//
//  Created by PMStudent on 11/29/21.
//
// Delete it after Use

import SwiftUI

struct TestingFile: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            VStack{
                HStack {
                    likeButton()
                    dislikeButton()
                        
                }
                rating()
            }
        }
    }
}
        
struct likeButton: View {
    
    @State public var fbColor: Color = .gray
    
    var body: some View {
        Image(systemName: "hand.thumbsup.fill")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(fbColor)
            .onTapGesture(count: 1, perform: {
                if (fbColor == .gray) {
                    fbColor = .blue
                } else if (fbColor == .blue) {
                    fbColor = .gray
                
                }
            })
        Text("Like")
    }
}

struct dislikeButton: View {
    
    @State public var fgColor: Color = .gray
    
    var body: some View {
        Image(systemName: "hand.thumbsdown.fill")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(fgColor)
            .onTapGesture(count: 1, perform: {
                if (fgColor == .gray) {
                    fgColor = .red
                } else if (fgColor == .red) {
                    fgColor = .gray
                
                }
            })
        Text("Dislike")
    }
}

struct rating: View {
    var body: some View {
        HStack {
            ratingStars()
            ratingStars()
            ratingStars()
            ratingStars()
            ratingStars()
        }
    }
}
    
struct ratingStars: View {
    
    @State public var stColor: Color = .gray
    
    var body: some View {
        Image (systemName: "star.fill")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(stColor)
            .onTapGesture(count: 1, perform: {
                if (stColor == .gray) {
                    stColor = .yellow
                } else if (stColor == .yellow) {
                    stColor = .gray
                }
            })
    }
}

struct TestingFile_Previews: PreviewProvider {
    static var previews: some View {
        TestingFile()
    }
}
