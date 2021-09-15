//
//  ContentView.swift
//  TicTacToe
//
//  Created by PMStudent on 9/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            Home()
                .navigationTitle("Tic Tac Toe")
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Home: View {
    // Number of moves you can make
    @State var moves: [String] = Array(repeating: "", count: 9)
    // Identifiies the current player
    @State var isPlaying = true
    var body: some View {
        VStack{
            //Creates the Gridview
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3), spacing: 15) {
                
                ForEach(0..<9, id: \.self) { index in
                    
                    ZStack {
                        Color.red
                        
                        Color.white
                            .opacity(moves[index] == "" ? 1 : 0)
                        Text(moves[index])
                            .font(.system(size: 55))
                            .fontWeight(.heavy)
                            .foregroundColor(.yellow)
                    }
                        .frame(width: getWidth(), height: getWidth())
                        .cornerRadius(23)
                        .rotation3DEffect(
                            .init(degrees: moves[index] != "" ? 360 : 0),
                            axis: (x: 0.0, y: 1.0, z: 0.0),
                            anchor: .center,
                            anchorZ: 0.0,
                            perspective: 1.0
                        )
                        .onTapGesture (perform: {
                            withAnimation(Animation.easeIn(duration: 0.01)) {
                                
                                if moves[index] == "" {
                                    moves[index] = isPlaying ? "🇨🇳" : "🇺🇸"
                                    isPlaying.toggle()
                            }
                        }
                    })
                }
            }
            
            .padding(15)
        }
    }
    // Calculates width of squares
    func getWidth() -> CGFloat {
        let width = UIScreen.main.bounds.width - (30 + 30)
        
        return width / 3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
