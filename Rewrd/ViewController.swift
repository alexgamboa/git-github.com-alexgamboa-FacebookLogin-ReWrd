//
//  ViewController.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/3/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase
class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet var MapContainer: UIView!
    @IBOutlet var BottomContainer: UIView!
    @IBOutlet var MenuOpenUnderlay: UIView!
    @IBOutlet var BottomLine: NSLayoutConstraint!
   
    
    
    
    
    var BottomContainerOrigin: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    addPanGesture(view: BottomContainer)
    BottomContainerOrigin = BottomContainer.frame.origin
        
        
}
    @IBAction func ShopButton(_ sender: Any) {
        performSegue(withIdentifier: "ShopSegue", sender: self)
    }
    


func addPanGesture(view: UIView){
    
    let pan = UIPanGestureRecognizer(target: self, action: #selector (ViewController.handlePan(sender:)))
    view.addGestureRecognizer(pan)
}

@objc func handlePan(sender: UIPanGestureRecognizer) {
    
    let BottomContainer = sender.view!
    let translation = sender.translation(in: view)
    
    
    switch sender.state {
    case .began, .changed:
        BottomContainer.center = CGPoint(x: BottomContainer.center.x, y: BottomContainer.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    case .ended:
        if BottomContainer.frame.intersects(MenuOpenUnderlay.frame) {
            UIView.animate(withDuration: 0.3, animations: {
                self.BottomContainer.frame.origin = self.BottomContainerOrigin
    
            })
        } else {
            
            UIView.animate(withDuration: 0.3, animations: {
                self.BottomContainer.center = CGPoint(x:208,y:933)
            })
        }
        break
    default:
        break
    }
    
}
    
}
