//
//  Counter.swift
//  PropertyWrapper
//
//  Created by dimitri on 10/10/2023.
//

import Foundation


class Counter: ObservableObject {
    @Published var value: Int = 0
    
    func increment() {
        value += 1
    }
    
    func decrement() {
        value -= 1
    }
}
