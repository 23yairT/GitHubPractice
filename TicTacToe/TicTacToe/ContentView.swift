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
    @State var isPlaying = false
    var body: some View {
        VStack{
            //Creates the Gridview
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3), spacing: 15) {
                
                ForEach(0..<9, id: \.self) { index in
                    
                    ZStack {
                        Color.white
                        
                        Text(moves[index])
                            .font(.system(size: 55))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                    }
                        .frame(width: getWidth(), height: getWidth())
                        .cornerRadius(23)
                        .onTapGesture (perform: {
                            withAnimation(Animation.easeIn(duration: 0.01)) {
                            
                                moves[index] = isPlaying ? "X" : "O"
                                isPlaying.toggle()
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
