//
//  AgricultureView.swift
//  AppChallenge3Part2
//
//  Created by PMStudent on 10/11/21.
//

import SwiftUI
import AVKit

struct AgricultureView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var country = 1
    
    var body: some View {
        
        Button(action: {
            if self.country == 1 {
                let sound = Bundle.main.path(forResource: "country\(self.country)", ofType: "mp3")
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


struct AgricultureView_Previews: PreviewProvider {
    static var previews: some View {
        AgricultureView()
    }
}
