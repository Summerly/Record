//
//  RecordManager.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import Foundation
import SQLite

class RecordManager {
    let path: String = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first!
    
    var db: Connection!
    
    let id = Expression<Int64>("id")
    let name = Expression<String>("name")
    let price = Expression<String>("price")
    
    init() {
        db = try! Connection("\(path)/db.sqlite3")
    }
    
    func getTable() -> SchemaType {
        let records = Table("records");
        
        if records.exists.template == "false" {
            do {
                try db.run(records.create { t in
                    t.column(id, primaryKey: true)
                    t.column(name)
                    t.column(price)
                    })
            } catch {
                print("not create table records")
            }
        }
        
        return records
    }
    
    func saveRecord(newName: String, newPrice: String) {
        var records = self.getTable()
        
        let insert = records.insert(name <- newName, price <- newPrice)
        
        try! db.run(insert)
    }
}