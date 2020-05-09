//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            FirstView()
                .tabItem {
                    Image(systemName: "gift")
                    Text("Friends")
            }.tag(0)
            SecondView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Home")
            }.tag(1)
            ThirdView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Reserve")
            }.tag(2)
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
