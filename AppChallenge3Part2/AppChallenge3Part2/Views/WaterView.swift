//
//  WaterView.swift
//  AppChallenge3Part2
//
//  Created by PMStudent on 10/11/21.
//

import SwiftUI
import AVKit

struct WaterView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var rain = 1
    
    var body: some View {
        VStack{
            Button(action: {
                if self.rain == 1 {
                    let sound = Bundle.main.path(forResource: "rain\(self.rain)", ofType: "mp3")
                    audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    audioPlayer.play()
                }
            }) {
                Image("raindrop")
                    .resizable()
                    .frame(width: 500, height: 250)
                    .background(
                        Image("rainbg")
                            .resizable()
                            .frame(width: 1000, height: 500)
                    )
            }
            Button(action: {
                audioPlayer.pause()
            }) {
                Text("⏸")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
        }
    }
}

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterView()
    }
}
