//
//  TableViewCell.swift
//  Autolayout
//
//  Created by Supakit Thanadittagorn on 9/26/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var bubbleLabel: UILabel!
    @IBOutlet weak var bubbleButtonView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
