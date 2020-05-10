//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @ObservedObject var stopwatch = Stopwatch()
    let currentTimePublisher = Timer.TimerPublisher(interval: 1.0, runLoop: .main, mode: .default).autoconnect()
    
    @State private var now = Date()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.stopwatch.start()
                }) {
                    Image(systemName: "play")
                }.padding()
                
                Button(action: {
                    self.stopwatch.stop()
                }) {
                    Image(systemName: "pause")
                }.padding()
                
                Button(action: {
                    self.stopwatch.reset()
                }) {
                    Image(systemName: "backward.end")
                }.padding()
            }
            .frame(width: 200)
            Text("\(self.stopwatch.counter)")
            
            Divider()
            
            VStack {
                Text("Time is").font(.largeTitle)
                Text("\(now.description)")
            }
            .onReceive(currentTimePublisher) { date in
                self.now = date
            }
            
        }.font(.largeTitle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
