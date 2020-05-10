//
//  Stopwatch.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/10.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import Foundation

class Stopwatch: ObservableObject {
    @Published var counter: Int = 0
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.counter += 1
        }
    }
    
    func stop() {
        timer.invalidate()
    }
    
    func reset() {
        timer.invalidate()
        counter = 0
    }
}
