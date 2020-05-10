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
        }.font(.largeTitle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
