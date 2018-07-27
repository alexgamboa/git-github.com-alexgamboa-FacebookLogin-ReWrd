//
//  GeoChallenges.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/5/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//


import UIKit
import MapKit
import AddressBook

class Bathroom: NSObject, MKAnnotation {
    let title: String?
    let locationName: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title:String, locationName: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String? {
        return locationName
    }
    
}

