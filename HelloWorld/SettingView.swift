//
//  SettingView.swift
//  EnvironmentObjectSample
//
//  Created by atsuya tange on 2019/05/10.
//  Copyright © 2020 atsuya tange. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    // 共有データを納める
     @EnvironmentObject var shareData: ShareData
     
     var body: some View {
         ZStack {
             // 背景
             Color(red: 0.9, green: 0.9, blue: 0.8)
                .edgesIgnoringSafeArea(.all)
                .overlay( Capsule()
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 100, height: 8)
                    .padding()
                    , alignment: .top )

             // 共有するデータを変更する
             VStack {
                 Text("値の設定")
                 // スイッチ
                 Toggle(isOn: $shareData.yesNo) {
                     Text( "Yes/No : \(shareData.yesNo ? "Yes" : "No")")
                 }.frame(width:250)
                 // ステッパー
                 Stepper(value: $shareData.num, in: 1...5) {
                     Text("★ ：\(shareData.num)")
                 }.frame(width:250)
             }
             .font(.title)
             .padding(.horizontal, 50)
         }
     }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
        .environmentObject(ShareData()) // プレビュー用
    }
}
