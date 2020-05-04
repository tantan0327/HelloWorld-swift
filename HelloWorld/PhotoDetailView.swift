//
//  PhotoDetailView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/04.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo: PhotoData
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
            Text(photo.title)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(verbatim: photo.title), displayMode: .inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: photoArray[0])
    }
}
