//
//  ContentView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/04/29.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    @Environment(\.locale) var locale: Locale
    
    var dateformatter: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        df.dateFormat = "yyyy年MM月dd日 HH時mm分"
        return df
    }
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .month, value: -1, to:Date())!
        let max = Calendar.current.date(byAdding: .month, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        Form {
            Text(dateformatter.string(from: theDate))
                .font(.headline)
            
            DatePicker(selection: $theDate,
                       in: dateClosedRange,
                       displayedComponents: .date,
                       label: { Text("日付") }).environment(\.locale, Locale(identifier: "ja_JP"))
            
            DatePicker(selection: $theDate,
                       in: dateClosedRange,
                       displayedComponents: .hourAndMinute,
                       label: { Text("時刻") }).environment(\.locale, Locale(identifier: "ja_JP"))
        }.padding()
    }
        
        
    
    func symbolImage(num: Int) -> Image {
        switch num {
        case 0:
            return Image(systemName: "r.circle")
        case 1:
            return Image(systemName: "g.circle")
        case 2:
            return Image(systemName: "b.circle")
        default:
            return Image(systemName: "r.circle")
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
