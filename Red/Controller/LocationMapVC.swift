//
//  LocationMapVC.swift
//  Red
//
//  Created by master on 9/5/18.
//  Copyright © 2018 XcoderZ. All rights reserved.
//

import UIKit
import GoogleMaps

class LocationMapVC: UIViewController , GMSMapViewDelegate{

    @IBOutlet weak var viewMap: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMap.delegate = self
        let camera: GMSCameraPosition = GMSCameraPosition.camera(withLatitude: 48.857165, longitude: 2.354613, zoom: 8.0)
        viewMap.camera = camera
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
