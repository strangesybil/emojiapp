//
//  ContentView.swift
//  Emoji Lover
//
//  Created by Kok  Raemae on 18/6/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🌹,🥹,💅🏼 // what emojis are available
}

struct ContentView: View {
    @State var selection: Emoji = .🌹 // initial state
    
    var body: some View {
        NavigationView {
            VStack{
                Text(selection.rawValue)
                    .font(.system(size:150)) // size of emoji
                
                Picker("Select Emoji", selection: $selection) { ForEach(Emoji.allCases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
                }
                .navigationTitle("Emoji Lovers!") // Title of app
                .pickerStyle(.segmented) // style of the picker
            }
            .padding() // creates space on both sides of the picker
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
