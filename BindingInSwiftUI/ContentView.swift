//
//  ContentView.swift
//  BindingInSwiftUI
//
//  Created by Fateh Khan on 04/05/2020.
//  Copyright © 2020 Zarrar Company. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "SwiftTrack", track: "WWDC 2019")
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .secondary)
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: self.$isPlaying)
        }
    }
}


struct PlayButton: View {
    @Binding var isPlaying: Bool
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text(isPlaying ? "Stop" : "Play")
        }
    .padding(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
