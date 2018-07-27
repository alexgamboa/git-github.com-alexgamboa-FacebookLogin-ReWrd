//
//  ShopController.swift
//  Rewrd (2)
//
//  Created by Steven Loiczly on 7/7/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

import UIKit

class  ShopController : UITableViewController, UITableViewDataSource, UITableViewDelegate
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = self.tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension

    }
    
    struct Storyboard {
        static let giftCardTableCell = "GiftCardTableCell"
    }
    
    // MARK : - Navigation
    

}
extension ShopController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 0 - Features Items
        // 1 -
        // 2 - shoe full details button cell
        // 3 - you might like this cell
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.giftCardTableCell, for: indexPath) as! GiftCardTableCell
            
        return cell
         
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        if indexPath.row == 0 {
            if let cell = cell as? GiftCardTableCell {
                cell.collectionView.dataSource = self
                cell.collectionView.delegate = self
                cell.collectionView.reloadData()
                
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt
        indexPath: IndexPath) -> CGFloat
    {
        if indexPath.row == 0 {
            return tableView.bounds.width + 68.0
        } else {
            return UITableViewAutomaticDimension
        }
    }
}

extension ShopController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.giftCardTableCell, for: indexPath) as! GiftCardCollectionCell
        // TODO: - get your data model...
        
        let Rewards = RewardItem.fetchGiftcards()
        
      
        cell.rewardTitle.text! = RewardItem[indexPath.row] as! Array
        cell.rewardPrice.text! = RewardItem[indexPath.row] as! Array
        
        
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5.0
        layout.minimumInteritemSpacing = 2.5
        
        let itemWidth = (collectionView.bounds.width - layout.minimumLineSpacing) / 1.7
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
}

