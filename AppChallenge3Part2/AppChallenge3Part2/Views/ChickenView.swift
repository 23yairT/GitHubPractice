//
//  ChickenView.swift
//  AppChallenge3Part2
//
//  Created by PMStudent on 10/11/21.
//

import SwiftUI

import SwiftUI
import AVKit

struct ChickenView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var chicken = 1
    
    var body: some View {
        
        Button(action: {
            if self.chicken == 1 {
                let sound = Bundle.main.path(forResource: "chicken\(self.chicken)", ofType: "mp3")
                audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }
        }) {
            Image("chicken")
                .resizable()
                .frame(width: 500, height: 250)
                .background(
                    Image("agriculture")
                        .resizable()
                        .frame(width: 700, height:500)
                )
        }
    }
}


struct ChickenView_Previews: PreviewProvider {
    static var previews: some View {
        ChickenView()
    }
}
