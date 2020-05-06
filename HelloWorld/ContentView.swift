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
    @State var name: String = ""
    @State var kosu: String = ""
    let tanaka: Double = 250
    let tax: Double = 1.1
    
    var body: some View {
        ZStack {
            Color.white.onTapGesture {
                UIApplication.shared.endEditing()
            }
        
        
            VStack(alignment: .leading) {
                
                TextField("お名前は?", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250)
                
                if (!name.isEmpty) {
                    Text("\(name)さん、こんにちは!")
                    .foregroundColor(.blue)
                }
                
                HStack {
                    Text("個数:").padding(.horizontal, 0)
                    TextField("0", text: $kosu)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 100)
                }
                .font(.title)
                .frame(width: 200)
                
                Group {
                    if kosuCheck(min: 1, max: 10) {
                        Text("\(price())円です。")
                            .font(.title)
                            .foregroundColor(.blue)
                    } else {
                            Text("個数は1 ~ 10個入れてください")
                                .foregroundColor(.red)
                                .font(.headline)
                    }
                }.frame(width: 300, height: 30)
                
                
                
            }
            .position(x:200, y: 200)
        }
    
    }
        
        
    
    func kosuCheck(min: Int, max: Int) -> Bool {
        guard let num = Int(kosu) else {
            return false
        }
        
        return (num >= min && num <= max)
    }
    
    func price() -> Int {
        if let num = Double(kosu) {
            let result = Int(tanaka * num * tax)
            return result
        } else {
            return -1
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
