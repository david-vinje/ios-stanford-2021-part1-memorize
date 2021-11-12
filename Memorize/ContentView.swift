//
//  ContentView.swift
//  Memorize
//
//  Created by David Nikolaj Vinje on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(emoji: "😇")
            CardView(emoji: "😇")
            CardView(emoji: "😇")
        }
    }
}

struct CardView: View {
    var emoji: String
    var isFaceUp = true
    var body: some View {
        ZStack {
            if (isFaceUp) {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke()
                Text(emoji).font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(.orange)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
