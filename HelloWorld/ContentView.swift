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
        NavigationView {
            List {
                Text("Content1")
                Text("Content2")
                HStack {
                    Image("brain")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:80)
                    Text("脳")
                }
                Text("Content4")
                VStack {
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:80)
                    Text("犬")
                }
                Text("Content6")
            }
            .navigationBarTitle("リスト表示", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
