//
//  ViewController.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var createButton: UIButton!
    
    let newRecordIdentifier: String = "newRecord"
    let recordListRecordIdentifier: String = "recordList"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonPress(sender: UIButton) {
        _ = RecordManager().getTable()
        self.performSegueWithIdentifier(newRecordIdentifier, sender: self)
    }
    @IBAction func recordListButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier(recordListRecordIdentifier, sender: self)
    }
}

