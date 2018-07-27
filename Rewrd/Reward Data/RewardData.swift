//
//  RewardData.swift
//  Rewrd (2)
//
//  Created by Steven Loiczly on 7/8/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class RewardItem

{
    
    var titles: [String?]
    var prices: [String?]

    
    init(titles: [String], price: [String])
    
    {
        self.titles = titles
        self.prices = price
    
    //var Discount: String?
    // var Timer: String?
        
    }

    class func fetchGiftcards() -> [RewardItem] {

        let Giftcards = [RewardItem]()
    // 1

        _ = RewardItem(titles: ["Amazon", "BestBuy","Starbucks"], price:["1880","1350", "2150"])
    
    return Giftcards
}
    
 

}
