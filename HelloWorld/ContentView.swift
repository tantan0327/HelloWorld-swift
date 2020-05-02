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
            VStack(alignment: .trailing) {
                Text("Bicycle for the Mind")
                Text("知性の自転車")
                    .offset(x: -10.0, y: 0)
            }
            .padding(.top, 80)
            VStack(alignment: .trailing) {
                Text("Pity is akin to love")
                Text("哀れみは恋の始まり")
                    .offset(x: -10, y: 0)
            }
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
