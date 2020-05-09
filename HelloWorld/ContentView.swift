//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(photoArray) { photoData in
                    PhotoView(photo:photoData)
                }
            }
        }
    }
    
}

struct Page: View {
    let w:CGFloat = UIScreen.main.bounds.width * 3/5
    let h:CGFloat = 200
    let str:String
    
    var body: some View {
        ZStack {
            Color.gray
                .frame(width: w, height: h)
                .cornerRadius(8)
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
