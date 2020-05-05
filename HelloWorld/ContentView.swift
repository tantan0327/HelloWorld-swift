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
    @State var iLike = true
    @State var isFast = true
    
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
            Divider()

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

            Divider()

            // $でオブジェクトそのものにアクセスし、現在の値をを取得
            Toggle(isOn: $iLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .fixedSize()
            .padding(50)


            if iLike {
                Image(systemName: "heart.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }

            Divider()
            
            HStack {
                Button(action: {
                    withAnimation {
                        self.isFast.toggle()
                    }
                }) {
                    Image(systemName: isFast ? "hare" : "tortoise")
                        .foregroundColor(isFast ? .blue : .black)
                        .rotationEffect(.degrees(isFast ? 0 : 180))
                        .scaleEffect(3)
                }
                .padding(30)
                
                Text(isFast ? "Fast" : "Slow")
                    .font(.title)
                    .foregroundColor(isFast ? .pink : .gray)
                    .rotationEffect(.degrees(isFast ? 0 : 180))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
