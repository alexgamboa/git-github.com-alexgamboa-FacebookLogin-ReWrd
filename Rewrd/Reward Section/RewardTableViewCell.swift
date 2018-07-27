//
//  RewardTableViewCell.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/11/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class RewardTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var CategoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
