//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Brain()
            Text("Hello World")
                .font(.largeTitle)
        }
    }
}

struct Brain: View {
    var body: some View {
        ZStack {
            Image("brain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(x: -20, y: 0)
                .frame(width: 300, height: 400)
                .clipped()
            Text("brain")
                .fontWeight(.light)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .frame(width: 300, height: 400)
                .shadow(radius:5)
        }
        .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
