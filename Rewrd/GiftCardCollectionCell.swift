//
//  GiftCardCollectionViewCell.swift
//  Rewrd (2)
//
//  Created by Steven Loiczly on 7/8/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class GiftCardCollectionCell: UICollectionViewCell {
    
@IBOutlet weak var imageView: UIImageView!
@IBOutlet weak var rewardTitle: UILabel!
@IBOutlet weak var rewardPrice: UILabel!
    
    var image: UIImage! {
        didSet {
            self.imageView.image = image
            self.setNeedsLayout()
        }
    }
    
    
    
}
