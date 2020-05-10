//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @State var isMyChecked1:Bool = false
    @State var isMyChecked2:Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("担当者1のチェック")
                CheckMarkPerson(isChecked: $isMyChecked1)
            }
            HStack {
                Text("担当者2のチェック")
                CheckMarkPerson(isChecked: $isMyChecked2)
            }
            
            if isMyChecked1 && isMyChecked2 {
                Text("全員チェック済み")
                    .foregroundColor(.blue)
                    .padding()
            } else {
                Text("チェック待ち")
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
}

struct CheckMarkPerson: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            self.isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "person.crop.circle.badge.checkmark" : "person.crop.circle").foregroundColor(isChecked ? .blue : .gray)
        }
        .imageScale(.large)
        .frame(width: 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
