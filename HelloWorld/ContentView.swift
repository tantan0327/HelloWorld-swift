//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}
 
struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            self.isError = true
        }) {
            Text("Alertテスト")
        }.alert(isPresented: $isError, content:{
            Alert(title: Text("タイトル"), message: Text("エラーメッセージ"), primaryButton: .destructive(Text("削除する"), action: {
                okAction()
            }),
              secondaryButton: .cancel(Text("キャンセル"), action: {}))
        })
    }
    
}

func okAction() {
    print("OKボタンが選ばれた")
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
