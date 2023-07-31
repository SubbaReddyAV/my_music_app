//
//  ContentView.swift
//  Music Player App
//
//  Created by Subba Reddy on 31/7/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ContentViewModel()
    
    var body: some View {
    
        NavigationView {
            List(model.audioData, id: \.self) { item in
               // Text(item.name)
                NavigationLink(item.name) {
                    Text(item.name)
                }
            }.onAppear {
                model.getAudioFiles()
            }.navigationTitle("List")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
