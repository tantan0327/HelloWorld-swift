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
        ZStack {
            Image("brain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 500)
                .clipped()
                .rotationEffect(.degrees(10), anchor: .center)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.pink)
                .frame(width: 100, height: 300)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.purple)
                .frame(width: 100, height: 300)
                .rotationEffect(.degrees(30), anchor: .bottom)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.green)
                .frame(width: 100, height: 300)
                .rotationEffect(.degrees(-30), anchor: .bottom)
            Circle()
                .foregroundColor(.green)
                .frame(width: 100, height: 100)
                .position(x: 120, y: 150)
                .edgesIgnoringSafeArea(.top)
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .position(x: 300, y: 350)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
