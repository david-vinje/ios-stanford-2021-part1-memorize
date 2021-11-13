//
//  ContentView.swift
//  Memorize
//
//  Created by David Nikolaj Vinje on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 6
    let emojis = ["😀", "😇", "😍", "😘", "😜", "🤓", "😎", "🥳", "😞", "🥶", "🤬", "😱", "😰", "😓", "🤭", "😶", "🤫", "🤥", "😬", "😲", "😴", "🥱", "🙄", "🤗", "😳", "😭", "😪", "🤢", "🥴", "🤧", "🤒", "🤑", "😷", "🤠"]
    var body: some View {
            VStack {
                HStack {
                    ForEach(emojis[1..<emojiCount], id: \.self) { emoji in
                        CardView(emoji: emoji)
                    }
                }.padding().foregroundColor(.orange)
                Spacer()
                HStack {
                    Spacer()
                    add
                    Spacer()
                    remove
                    Spacer()
                }
            }.foregroundColor(.orange).font(.largeTitle)
        }
    
    var add: some View {
        Button {
            if (emojiCount < emojiCount) {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var remove: some View {
        Button {
            if (emojiCount > 1) {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    var emoji: String
    @State var isFaceUp = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if (isFaceUp) {
                shape.foregroundColor(.white)
                shape.stroke(lineWidth: 3.0)
                Text(emoji)
            } else {
                shape
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
