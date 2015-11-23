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
    var remark: String
    
    init(id: UInt = UInt(arc4random_uniform(8)), name: String = "",
        price: String = "0.0", number: Int = 1,
        time: String = "\(NSDate())", remark: String = "") {
        self.id = id
        self.name = name
        self.price = price
        self.number = number
        self.time = time
        self.remark = remark
    }
    
    func description() -> String {
        return "id: \(self.id) name:\(self.name) price:\(self.price) number:\(self.number) time:\(self.time) remark: \(self.remark)"
    }
}