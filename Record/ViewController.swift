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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonPress(sender: UIButton) {
        print("button press")
        self.performSegueWithIdentifier(newRecordIdentifier, sender: self)
    }
}

