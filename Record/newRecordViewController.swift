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
    @IBOutlet weak var timeDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        let time = timeDatePicker.date
        let record = Record(name: nameTextField.text!, price: priceTextField.text!, time: "\(time)")

        RecordManager().saveRecord(record)
        
        if let navigationController = self.navigationController {
            navigationController.popViewControllerAnimated(true)
        }
    }
}
