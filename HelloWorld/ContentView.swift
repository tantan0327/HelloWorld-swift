//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @EnvironmentObject var shareData: ShareData
    @State var isModal: Bool = false
    
    var body: some View {
        MapView()
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ShareData())
    }
}
