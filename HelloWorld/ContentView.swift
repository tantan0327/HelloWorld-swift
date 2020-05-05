//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    @State var msg = "Thank you!"
    
    var body: some View {
        VStack {
            Button(action: {
                self.num = Int.random(in: 0...100)
            }) {
                Text("Random Button")
                    .font(.largeTitle)
                    .frame(width: 280, height: 60, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(15, antialiased: true)
            }
            Text("\(num)")
                .font(.largeTitle)
                .padding()
            
            Button("Tap") {
                if self.msg == "Thank you!" {
                    self.msg = "ありがとう!"
                } else {
                    self.msg = "Thank you!"
                }
            }
                .font(.headline)
                .foregroundColor(.white)
                .background(
                    Capsule()
                        .foregroundColor(.green)
                        .frame(width: 80, height: 30)
                )
            Text(msg).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
