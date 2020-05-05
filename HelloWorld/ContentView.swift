//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanaka = 240
    let tax = 0.1
    
    var body: some View {
        VStack {
            Stepper(
                onIncrement: {
                    self.kosu += 5
                    self.kosu = min(self.kosu, 30)
                },
                onDecrement: {
                    self.kosu -= 5
                    self.kosu = max(self.kosu, 0)
                },
                label: {Text("個数: \(self.kosu)")}
            ).frame(width: 200)
            
            Text("料金: \(calc(self.kosu))円[税込み]")
                .underline()
        }
    }
    
    func calc(_ num:Int) -> Int {
        let price = self.tanaka * num
        let result = Double(price) * (1 + self.tax)
        return Int(result)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
