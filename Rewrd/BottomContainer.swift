//
//  BottomContainer.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/5/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class BottomContainer: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var Reward: NSArray = []
    var ChallengeArray:NSArray = []
    var myIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Reward = ["$1,500", "$550", "$950", "$1950" ]
        ChallengeArray = ["Take a selfie with 4 dogs", "Take a picture of 3 different colored Red Bull cans", "Get a selfie with Steven", "Record Alex smiling"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reward.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.RewardAmmount.text! = Reward[indexPath.row] as! String
        cell.ChallengeTitle.text! = ChallengeArray[indexPath.row] as! String
        
        return cell
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    }


