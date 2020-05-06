//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var volume: Double = 0.0
    
    @State var R:Double = 0
    @State var G:Double = 0
    @State var B:Double = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(format(volume))").frame(width: 100)
                HStack {
                    Image(systemName: "speaker.slash").imageScale(.large)
                    Slider(value: $volume)
                    Image(systemName: "speaker.3").imageScale(.large)
                }
                .frame(width: 200)
            }
            
            VStack(alignment: .center) {
                Circle()
                    .frame(width: 100, height: 100)
                .padding()
                    .foregroundColor(Color(red: R/255, green: G/255, blue: B/255))
                
                HStack{
                    Circle()
                        .foregroundColor(.red)
                        .frame(width:20, height: 20)
                    Text(String(Int(R))).frame(width: 40)
                    Slider(value: $R, in: 0...255).frame(width: 200)
                }
                
                HStack{
                    Circle()
                        .foregroundColor(.green)
                        .frame(width:20, height: 20)
                    Text(String(Int(G))).frame(width: 40)
                    Slider(value: $G, in: 0...255).frame(width: 200)
                }
                
                HStack{
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width:20, height: 20)
                    Text(String(Int(B))).frame(width: 40)
                    Slider(value: $B, in: 0...255).frame(width: 200)
                }
            }
        }
        
    }
    
    func format(_ num:Double) -> String {
        let result = String(round(num*100)/100)
        return result
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
