//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @State var isModal:Bool = false
    @State var counter:Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                self.isModal = true
            }) {
                Text("Sheetテスト")
            }.sheet(isPresented: $isModal, onDismiss: {self.countUp()}) {
                SomeView()
            }.disabled(counter >= 3)
            
            Text("回数:\(counter)")
            .font(.title)
            .padding()
        }
    }
    
    func countUp() {
        self.counter += 1
    }
    
}

func deleteProcess() {
    print("削除しました")
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
