//
//  previewViewController.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/6/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import UIKit

class previewViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    
    var image:UIImage!

    override func viewDidLoad() {
    photo.image = self.image
    photo.image = image

}
}
