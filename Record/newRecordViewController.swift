//
//  newRecordViewController.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class newRecordViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        let record = Record(name: nameTextField.text!, price: priceTextField.text!)
        
        RecordManager().saveRecord(record.name,newPrice: record.price)
        
        print(record.description())
    }
    
    @IBAction func backbuttonPressed(sender: UIButton) {
        if let navigationController = self.navigationController {
            navigationController.popViewControllerAnimated(true)
        }
    }
}
