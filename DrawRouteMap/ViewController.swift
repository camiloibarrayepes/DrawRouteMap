//
//  ViewController.swift
//  DrawRouteMap
//
//  Created by camilo andres ibarra yepes on 4/29/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit
import MapKit

class customPin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle:String, pinSubTitle:String, location:CLLocationCoordinate2D){
        self.title = pinTitle
        self.subtitle = pinSubTitle
        self.coordinate = location
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sourceLocation = CLLocationCoordinate2D(latitude: 39.173209 , longitude: -94.593933)
        let destinationLocation = CLLocationCoordinate2D(latitude: 38.643172, longitude: -90.177429)
        
        let sourcePin = customPin(pinTitle: "Kansas City", pinSubTitle: "", location: sourceLocation)
        let destinationPin = customPin(pinTitle: "Boston Ma", pinSubTitle: "", location: destinationLocation)
        
        self.mapView.addAnnotation(sourcePin)
        self.mapView.addAnnotation(destinationPin)
        
        
    }


}

