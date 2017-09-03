//
//  LocationVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/9/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocationVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    // MARK: Properties

    @IBOutlet weak var mapView: MKMapView!
    
    var Work: OurWorkFile!
    
    let manager = CLLocationManager()
    var myCoordinates = CLLocationCoordinate2D()

    @IBAction func BackBtnPressed (_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
//        let location = locations[0]
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(Double(Work.lat)!, Double(Work.lon)!)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        mapView.setRegion(region, animated: true)
        
        self.mapView.showsUserLocation = true
        
    }

}
