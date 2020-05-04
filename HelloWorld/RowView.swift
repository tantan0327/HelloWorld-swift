//
//  RowView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/04.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct PhotoRow: View {
    var photo: PhotoData
    
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
            Spacer()
        }
    }
}

// preview 確認用
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow(photo: photoArray[2])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
