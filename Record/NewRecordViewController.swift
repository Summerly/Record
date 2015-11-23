//
//  newRecordViewController.swift
//  Record
//
//  Created by xiyuexin on 15/11/19.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class NewRecordViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var timeDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        let time = timeDatePicker.date
        
        if nameTextField.text!.isEmpty {
            self.emptyWarning("Name should not be empty")
        }
        
        if priceTextField.text!.isEmpty {
            self.emptyWarning("Price should not be empty")
        }
        
        if numberTextField.text!.isEmpty {
            self.emptyWarning("Number should not be empty")
        }
        
        if !nameTextField.text!.isEmpty && !priceTextField.text!.isEmpty && !numberTextField.text!.isEmpty {
            let record = Record(name: nameTextField.text!, price: priceTextField.text!,
                number: Int(numberTextField.text!)!, time: "\(time)")
            
            RecordManager().saveRecord(record)
            
            if let navigationController = self.navigationController {
                navigationController.popViewControllerAnimated(true)
            }
        }
    }
    
    private func emptyWarning(message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "I know", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
}
