//
//  ContentView.swift
//  Example
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI
import YouTubePlayPauseView

struct ContentView: View {
    @State private var playing = false

    var body: some View {
        YouTubePlayPauseView(playing: $playing, continuousUpdate: true, color: .red)
            .frame(width: 100, height: 100)
            .onChange(of: playing) {
                print("Playing: \($0), \($1)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
