//
//  SeeTableViewCell.swift
//  Reading
//
//  Created by 魏辉 on 16/3/23.
//  Copyright © 2016年 魏辉. All rights reserved.
//

import UIKit

class SeeTableViewCell: UITableViewCell {

    @IBOutlet weak var sontent: UITextView!
    @IBOutlet weak var heart: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
