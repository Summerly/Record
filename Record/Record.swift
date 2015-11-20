//
//  Record.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import Foundation

class Record {
    var name: String
    var price: String
    var number: Int
    var time: String
    
    init(name: String, price: String, number: Int, time: String) {
        self.name = name
        self.price = price
        self.number = number
        self.time = time
    }
    
    convenience init(name: String, price: String) {
        self.init(name: name, price: price, number: 1, time: "\(NSData())")
    }
    
    convenience init(name: String, price: String, time: String) {
        self.init(name: name, price: price, number: 1, time: time)
    }
    
    func description() -> String {
        return "name:\(self.name) price:\(self.price) number:\(self.number) time:\(self.time)"
    }
}