//
//  DislikeView.swift
//  FinalProjects
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct DislikeView: View {
    var body: some View {
        Button {
            print("Chico")
        } label: {
            Label("Dislike", systemImage: "hand.thumbsdown")
        }
    }
}

struct DislikeView_Previews: PreviewProvider {
    static var previews: some View {
        DislikeView()
    }
}
