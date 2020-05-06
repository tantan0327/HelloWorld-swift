//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedSize = 2
    @State private var selectedColor = 0
    let sizes = ["XS", "S", "M", "L", "LL"]
    let colors = ["Red", "Green", "Blue", "Yellow", "Pink", "White"]
    
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedSize, label: Text("")) {
                    ForEach(0..<sizes.count) { index in
                        Text(self.sizes[index]).tag(index)
                    }
                }
                .frame(width: 200)
                
                Picker(selection: $selectedColor, label: Text("")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index)
                    }
                }
                .frame(width: 200)
                .onAppear(perform: {
                    self.selectedColor = self.colors.count/2
                })
                
            }
            
            HStack {
                Text("size: \(sizes[selectedSize])").padding(.horizontal, 40)
                Text("color: \(sizes[selectedColor])").padding(.horizontal, 30)
            }
            .foregroundColor(Color.white)
            .font(.headline)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 40)
                    .foregroundColor(Color.gray))
        }
        
        
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
