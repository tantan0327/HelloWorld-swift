//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {
            self.isSheet = true
        }) {
            Text("削除")
                .foregroundColor(.white)
            .background(Capsule()
                .foregroundColor(.red)
                .frame(width: 80, height: 30))
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("削除しますか?"),
                        buttons: [
                            .destructive(Text("削除"), action: {
                                deleteProcess()
                            }),
                            .cancel(Text("キャンセル"), action: {})
                ])
        }
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
