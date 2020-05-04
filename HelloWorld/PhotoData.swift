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
    dataArray.append(PhotoData(id: 1, imageName: "f1", title: "Ann"))
    dataArray.append(PhotoData(id: 2, imageName: "f2", title: "Jessy"))
    dataArray.append(PhotoData(id: 3, imageName: "f3", title: "Mike"))
    dataArray.append(PhotoData(id: 4, imageName: "f4", title: "Emma"))
    dataArray.append(PhotoData(id: 5, imageName: "f5", title: "Bob"))
    dataArray.append(PhotoData(id: 6, imageName: "person1", title: "Yumi"))
    dataArray.append(PhotoData(id: 7, imageName: "person2", title: "Ayumi"))
    dataArray.append(PhotoData(id: 8, imageName: "person3", title: "Akemi"))
    dataArray.append(PhotoData(id: 9, imageName: "person4", title: "Taro"))
    
    return dataArray
}
