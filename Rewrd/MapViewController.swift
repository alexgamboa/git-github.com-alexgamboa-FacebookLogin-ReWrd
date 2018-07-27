//
//  MapViewController.swift
//  Rewrd
//
//  Created by Steven Loiczly on 7/3/18.
//  Copyright © 2018 Steven Loiczly. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate  {
    
    @IBOutlet var MapView: MKMapView!
    
    
    //Setting up Current Locations View
    let manager = CLLocationManager()
    
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.03, 0.03)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion (center: myLocation, span: span)
        MapView.setRegion(region, animated: true)
        
        self.MapView.showsUserLocation = true
    }
    
    //END
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        let sampleBathroom = Bathroom (title: "Bathroom #1",
                                       locationName: "Address Example",
                                       coordinate: CLLocationCoordinate2DMake(41.504567, -81.688298))
        MapView.addAnnotation(sampleBathroom)
        MapView.delegate = self
    }}


// Placemarker Apperance Settings
extension MapViewController : MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if let annotation = annotation as? Bathroom {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView{
                dequeuedView.annotation = annotation
                
                view = dequeuedView
            } else {
                view = MKPinAnnotationView (annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton (type: .detailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    //END
    
    
    
    
    
    
    override var prefersStatusBarHidden: Bool
    { return true}

    
}



