//
//  PokemonCard.swift
//  PokeDex
//
//  Created by PMStudent on 10/19/21.
//

import SwiftUI

struct PokemonCard: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Bulbasaur")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading)
                
                HStack {
                    Text("posion")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 0)
                        .overlay(RoundedRectangle( cornerRadius: 12).fill(Color.white.opacity(0.25)))
                        .frame(width: 100, height: 25)
                    
                    
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 5)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 8, x: 0, y: 0)
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard()
    }
}
