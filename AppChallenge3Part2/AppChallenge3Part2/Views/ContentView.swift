//
//  ContentView.swift
//  AppChallenge3Part2
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI
import AVKit

struct ContentView: View {

    
    var body: some View {
        VStack {
            TabView(selection: .constant(1)) {
                WaterView().tabItem { Text("💧") }.tag(1)
                AgricultureView().tabItem { Text("🌾") }.tag(2)
                ChickenView().tabItem { Text("🐓") }.tag(3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
