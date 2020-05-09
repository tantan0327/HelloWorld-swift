//
//  SecondView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/09.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Hello, SecondView!")
                .font(.title)
            Image(systemName: "2.circle.fill")
                .scaleEffect(x: 3, y: 3)
                .padding(40)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
