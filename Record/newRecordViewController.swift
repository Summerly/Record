//
//  newRecordViewController.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class newRecordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        print("newRecord button press")
        if let navigationController = self.navigationController {
            print("popViewController")
            navigationController.popViewControllerAnimated(true)
        }
    }
}
