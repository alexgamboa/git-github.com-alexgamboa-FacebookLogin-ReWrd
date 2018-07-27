//  TableViewCell.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/5/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var RewardAmmount: UILabel!
    
    
    @IBOutlet weak var ChallengeTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
