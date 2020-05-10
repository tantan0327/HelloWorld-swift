//
//  SharData.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/10.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import Foundation

class ShareData: ObservableObject {
    @Published var yesNo = false
    @Published var num = 1
}
