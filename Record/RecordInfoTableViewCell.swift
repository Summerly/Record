//
//  RecordInfoTableViewCell.swift
//  Record
//
//  Created by xiyuexin on 15/11/20.
//  Copyright © 2015年 xiyuexin. All rights reserved.
//

import UIKit

class RecordInfoTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
