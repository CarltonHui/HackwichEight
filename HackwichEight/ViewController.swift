//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    //Set initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.346470 , longitude: -158.080098)
    //Set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 1000
    //Will be playing with radius in project
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    centerMapOnLocation(location: initialLocation)
    
    //Create a restaurant object amd set all the arguments to each of the three parameters
    let restaurantOne = Restaurant(title: "Kalapawai", type: "Kalapawai", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
    mapView.addAnnotation(restaurantOne)
    
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
