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
    
    init(name: String, price: String, number: Int) {
        self.name = name
        self.price = price
        self.number = number
    }
    
    convenience init(name: String, price: String) {
        self.init(name: name, price: price, number: 1)
    }
    
    func description() -> String {
        return "name:\(self.name) price:\(self.price) number:\(self.number)"
    }
}