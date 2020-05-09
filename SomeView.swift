//
//  SomeView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/09.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct SomeView: View {
    @Environment (\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Spacer()
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
            Spacer()
            
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Text("OK").font(.title)
            }.padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
