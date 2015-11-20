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
    var recordListCellIdentifier = "recordListCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        records = RecordManager().showRecords()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(recordListCellIdentifier, forIndexPath: indexPath)
        
        let record = records[indexPath.row]
        
        cell.textLabel?.text = record.name
        cell.detailTextLabel?.text = record.price
        
        return cell
    }
}
