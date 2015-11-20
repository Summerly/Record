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
    let number = Expression<Int>("number")
    let time = Expression<String>("time")
    
    init() {
        db = try! Connection("\(path)/db.sqlite3")
    }
    
    func getTable() -> SchemaType {
        let records = Table("records");
        
        if !self.isTableExist("records") {
            do {
                try db.run(records.create { t in
                    t.column(id, primaryKey: true)
                    t.column(name)
                    t.column(price)
                    t.column(number)
                    t.column(time)
                    })
            } catch {
                print("not create table records")
            }
        }
        
        return records
    }
        
    func saveRecord(record: Record) {
        let records = self.getTable()
        let insert = records.insert(name <- record.name, price <- record.price, number <- record.number, time <- record.time)
        try! db.run(insert)
    }
    
    func showRecords() -> [Record] {
        var records: [Record] = []
        for recordRow in db.prepare(self.getTable()) {
            let record = Record(id: UInt(recordRow[self.id]), name: recordRow[self.name],
                price: recordRow[self.price], number: recordRow[self.number],
                time: recordRow[self.time])
            records.append(record)
        }
        return records
    }
    
    func isTableExist(tableName: String) -> Bool {
        return db.scalar("select exists(select name from sqlite_master where name = ?)", tableName) as! Int64 > 0
    }
}