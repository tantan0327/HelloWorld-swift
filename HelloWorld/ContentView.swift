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
        VStack {
            HStack {
                Text(shareData.yesNo ? "Yes" : "No")
                Text(String(repeating: "★", count: shareData.num))
                    .foregroundColor(shareData.yesNo ? .green : .gray)
            }.font(.title)
            
            Button(action: {
                self.isModal = true
            }) {
                Text("[設定の変更]")
                    .padding()
            }
            .sheet(isPresented: $isModal) {
                SettingView().environmentObject(self.shareData)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ShareData())
    }
}
