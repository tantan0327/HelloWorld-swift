//
//  PhotoView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/09.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    let w:CGFloat = UIScreen.main.bounds.width - 100
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: w, height: w)
                .clipped()
            Text(photo.title).padding()
        }
        .padding()
        .background(Color(red: 0.9, green: 0.9, blue: 0.7))
        .cornerRadius(8)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[0])
    }
}
