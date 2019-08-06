//
//  mapClass.swift
//  tabBar App
//
//  Created by Abdalla on 8/4/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import MapKit

class mapClass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mapBtn(_ sender: Any) {
        
        let lat:CLLocationDegrees = 30.942186
        let lon:CLLocationDegrees = 31.981745
        
        let regionDistance:CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(lat, lon)
        
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        
        let option=[MKLaunchOptionsMapCenterKey:NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey:NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placeMaker = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placeMaker)
        
        mapItem.name = "My Home Here"
        mapItem.openInMaps(launchOptions: option)
    }
    
}
