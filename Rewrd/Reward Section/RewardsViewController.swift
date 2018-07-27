//
//  RewardsViewController.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/11/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    

    let Categories: [String] = ["Headphones","Phone Accessories","Bluetooth Speakers","Phone Accessories"]
    
    //section 1
    let Table1Titles: [String] = ["Wireless Noise Canceling Bluetooth Earphones","Wireless Mini Bluetooth Earphones","Wireless Foldable Stereo Headphone","Wireless Sports Bluetooth Stereo EarBuds"]
    let Table1Images: [UIImage] = [#imageLiteral(resourceName: "HeadPhones"),#imageLiteral(resourceName: "MiniEarPhones"),#imageLiteral(resourceName: "Foldable HeadPhones-2"),#imageLiteral(resourceName: "SportEarBuds")]
    let Table1Prices: [String] = ["$2,500","$2,000","$3,000","1,500"]
    
    
    // section 2
    let PhoneAccessoryTitles: [String] = ["Professional HD Telescope Zoom Lens","Universal Phone Magnet Car Mount ","LED Portable Universal Selfie Light","Universal 360 Flexible Phone Mount"]
    let PhoneAccessoryImages: [UIImage] = [#imageLiteral(resourceName: "TelescopeLens"),#imageLiteral(resourceName: "CarMount"),#imageLiteral(resourceName: "SelfieLight"),#imageLiteral(resourceName: "PhoneStand")]
    let PhoneAccessoryPrice: [String] = ["$750","$850","$975","$860"]
    
    //section 3
    let SpeakerTitles: [String] = ["LED Mini Bluetooth Speaker","Portable 4.0 Bluetooth Speaker","Waterproof Indoor/Outdoor Bluetooth Speaker","Bluetooth LED Light Bulb Speaker","Smart Sphere Bluetooth Speaker"]
    let SpeakerImages: [UIImage] = [#imageLiteral(resourceName: "LEDSpeakers-2"),#imageLiteral(resourceName: "Speaker2"),#imageLiteral(resourceName: "WaterProof"),#imageLiteral(resourceName: "LightSpeaker"),#imageLiteral(resourceName: "SmartSphere")]
    let SpeakerPrice: [String] = ["$750","$850","$975","$860","$1,200"]
    
    //section 4
    
    @IBAction func BackButton(_ sender: Any) {
        performSegue(withIdentifier: "ShopSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 321
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RewardTableViewCell", for: indexPath) as? RewardTableViewCell
        
        cell?.CategoryTitle.text = Categories[indexPath.row]
        
        
            cell?.collectionView.delegate = self
            cell?.collectionView.dataSource = self
            cell?.collectionView.tag = indexPath.row
            cell?.collectionView.reloadData()
            return cell!
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0
        {
            //Category 1
            return 4
        }
        if collectionView.tag == 1
        {
            //Category 2
            return 4
        }
        if collectionView.tag == 2
        {
            //Category 3
            return 5
        }
        return 0
    }
    
    
    //collectionView cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath IndexPath: IndexPath) -> CGSize {
        return CGSize(width: ((self.view.frame.size.width/2) + 16), height: 415);
    }
    
    //collectionView cell data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt IndexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: IndexPath) as! CollectionViewCell
        
        if collectionView.tag == 0
        {
            cell.Img.image = Table1Images[IndexPath.row]
            cell.RewardTitle.text = Table1Titles[IndexPath.row]
            cell.RewardPrice.text = Table1Prices[IndexPath.row]
        }
        if collectionView.tag == 1
        {
            cell.RewardTitle.text = PhoneAccessoryTitles[IndexPath.row]
            cell.Img.image = PhoneAccessoryImages[IndexPath.row]
            cell.RewardPrice.text = PhoneAccessoryPrice[IndexPath.row]
        }
        if collectionView.tag == 2
        {
            cell.RewardTitle.text = SpeakerTitles[IndexPath.row]
            cell.Img.image = SpeakerImages[IndexPath.row]
            cell.RewardPrice.text = SpeakerPrice[IndexPath.row]
        }

        return cell
    }


    }


