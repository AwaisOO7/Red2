//
//  RequestHistoryTVCell.swift
//  Red
//
//  Created by master on 9/7/18.
//  Copyright © 2018 XcoderZ. All rights reserved.
//

import UIKit

class RequestHistoryTVCell: UITableViewCell {

    @IBOutlet weak var DateAndTime: UILabel!
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var StartAddress: UILabel!
    @IBOutlet weak var EndingAddress: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
