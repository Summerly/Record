//
//  RecordListTableViewController.swift
//  Record
//
//  Created by xiyuexin on 15/11/20.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class RecordListTableViewController: UITableViewController {
    var records: [Record]!
    var recordListCellIdentifier = "recordInfoCell"
    var prototypeCell: RecordInfoTableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        records = RecordManager().showRecords()
        let nib = UINib(nibName: "RecordInfoCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: recordListCellIdentifier)
        prototypeCell = tableView.dequeueReusableCellWithIdentifier(recordListCellIdentifier) as! RecordInfoTableViewCell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(recordListCellIdentifier, forIndexPath: indexPath) as! RecordInfoTableViewCell
        
        let record = records[indexPath.row]
        
        cell.nameLabel.text = record.name
        cell.priceLabel.text = record.price
        cell.numberLabel.text = "\(record.number)"
        cell.timeLabel.text = record.time
        
        return cell
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell = prototypeCell
        let record = records[indexPath.row]
    
        cell.priceLabel.text = record.price
        cell.numberLabel.text = "\(record.number)"
        cell.timeLabel.text = record.time
        
        let height = cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height
        
        return height
    }
}
