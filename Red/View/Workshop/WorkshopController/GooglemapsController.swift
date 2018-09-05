//
//  GooglemapsController.swift
//  Red
//
//  Created by Awais Malik on 05/09/2018.
//  Copyright © 2018 XcoderZ. All rights reserved.
//

import UIKit
import GoogleMaps
class GooglemapsController: UIViewController, GMSMapViewDelegate {

    @IBOutlet weak var mapViews: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapViews = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        mapViews.delegate = self
        
        // Do any additional setup after loading the view.
    }



}
