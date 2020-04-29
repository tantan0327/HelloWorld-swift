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
            Text("Bicycle for the Mind")
                .font(.title)
                .fontWeight(.heavy)
            Text("知性の自転車")
                .foregroundColor(Color.orange)
            Text("The Quick Brown Fox Jumps Over the Lazy Dog")
                .font(.largeTitle)
            .multilineTextAlignment(.center)
                .frame(width: 200.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
