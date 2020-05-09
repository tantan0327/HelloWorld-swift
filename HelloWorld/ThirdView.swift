//
//  ThirdView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/09.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Hello, ThirdView!")
                .font(.title)
            Image(systemName: "3.circle.fill")
                .scaleEffect(x: 3, y: 3)
                .padding(40)
        }    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
