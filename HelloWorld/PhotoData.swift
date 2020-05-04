//
//  PhotoData.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/04.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

func makeData() -> [PhotoData] {
    var dataArray: [PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "f1", title: "f1"))
    dataArray.append(PhotoData(id: 2, imageName: "f2", title: "f2"))
    dataArray.append(PhotoData(id: 3, imageName: "f3", title: "f3"))
    dataArray.append(PhotoData(id: 4, imageName: "f4", title: "f4"))
    dataArray.append(PhotoData(id: 5, imageName: "f5", title: "f5"))
    dataArray.append(PhotoData(id: 6, imageName: "person1", title: "f6"))
    dataArray.append(PhotoData(id: 7, imageName: "person2", title: "f7"))
    dataArray.append(PhotoData(id: 8, imageName: "person3", title: "f8"))
    dataArray.append(PhotoData(id: 9, imageName: "person4", title: "f9"))
    
    return dataArray
}
