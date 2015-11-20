//
//  Record.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import Foundation

class Record {
    var id: UInt
    var name: String
    var price: String
    var number: Int
    var time: String
    
    init(id: UInt, name: String, price: String, number: Int, time: String) {
        self.id = id
        self.name = name
        self.price = price
        self.number = number
        self.time = time
    }
    
    convenience init(id: UInt, name: String, price: String, time: String) {
        self.init(id: id, name: name, price: price, number: 1, time: time)
    }
    
    convenience init(name: String, price: String, number: Int, time: String) {
        self.init(id: UInt(arc4random_uniform(8)), name: name, price: price, number: number, time: time)
    }

    convenience init(name: String, price: String, time: String) {
        self.init(id: UInt(arc4random_uniform(8)), name: name, price: price, time: time)
    }
    
    convenience init(name: String, price: String) {
        self.init(name: name, price: price, time: "\(NSData())")
    }
    
    func description() -> String {
        return "id: \(self.id) name:\(self.name) price:\(self.price) number:\(self.number) time:\(self.time)"
    }
}