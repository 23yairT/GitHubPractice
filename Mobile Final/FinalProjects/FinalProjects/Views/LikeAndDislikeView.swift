//
//  LikeView.swift
//  FinalProjects
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct LikeAndDislikeView: View {

    @State var alertIsVisible = false

    var body: some View {
        ZStack {
            HStack {
                likeButton()
                dislikeButton()
            }
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeAndDislikeView()
    }
}




//struct LikeAndDislikeView: View {
//
//    @State var alertIsVisible = false
//
//
//    var body: some View {
//        HStack {
//            Button {
//                if (alertIsVisible == true) {
//                    print("Chico")
//                }
//            } label: {
//                Label("Like", systemImage: "hand.thumbsup")
//                    .frame(width: 100, height: 100)
//                    .font(.system(size: 20, weight: .bold))
//            }
//
//            Button {
//                print("Chico")
//            } label: {
//                Label("Dislike", systemImage: "hand.thumbsdown")
//                    .frame(width: 100, height: 100)
//                    .font(.system(size: 20, weight: .bold))
//            }
//        }
//        .foregroundColor(.black)
//        .padding(.leading, -120)
//    }
//}

//struct LikeView_Previews: PreviewProvider {
//    static var previews: some View {
//        LikeAndDislikeView()
//    }
//}
