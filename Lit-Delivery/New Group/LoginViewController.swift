//
//  LoginViewController.swift
//  Lit-Delivery
//
//  Created by Koua Thao on 10/10/18.
//  Copyright © 2018 Koua Thao. All rights reserved.
//

import UIKit
import MapKit
class LoginViewController: UIViewController, MKMapViewDelegate {


    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var findMyLocation: UIButton!
    @IBOutlet weak var ubeView: UIView!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func bHamburger(_ sender: Any) {
        // open hamburger menu
        if !hamburgerMenuIsVisible {
            leadingC.constant = 250
            trailingC.constant = -150
            
            hamburgerMenuIsVisible = true
        } else{
            leadingC.constant = 0
            trailingC.constant = 0
            
            hamburgerMenuIsVisible = false
            
            
        }
        // hamburger menu animation
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
        
}
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        mapView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func zoomIn(_ sender: Any) {
        
        let userLocation = mapView.userLocation
        let region = MKCoordinateRegion(center: (userLocation.location?.coordinate)!,latitudinalMeters: 2000,longitudinalMeters: 2000)
        mapView.setRegion(region, animated: true)
        
        // Hide *Find My Location* button
        findMyLocation.isHidden = true
    }
    
}
