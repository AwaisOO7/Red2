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

    //IBOutlets of buttons and popup views
    
    @IBOutlet weak var PromoCodeTxt: UITextField!
    @IBOutlet weak var WorkshopDestinationTxt: UITextField!
    @IBOutlet weak var UserRemarks: UITextField!
    @IBOutlet weak var CustomerLocationTxt: UITextField!
    
    @IBOutlet weak var DistanceANDCostView: ViewStyle!
    @IBOutlet weak var AfterPromoCostLbl: UILabel!
    @IBOutlet weak var TotalCostLbl: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var TermsAndConditions: UIButton!
    @IBOutlet weak var OrderNowBtn: UIButtonStyle!
    @IBOutlet weak var NextBTN: UIButtonStyle!
    @IBOutlet weak var NavBarLabel: UILabel!
    
    //promo view outlets and functions
    @IBOutlet weak var PromoCodeView: UIView!
    @IBOutlet weak var PromoCodeLabel: UILabel!
    
    @IBOutlet weak var PromoDescriptionLBL: UILabel!
    
    @IBAction func CancelPromoView(_ sender: UIButton) {
        self.PromoCodeView.isHidden = true
        self.NextBTN.isHidden = false
    }
    @IBAction func OKPromoCodeBtn(_ sender: UIButton) {
        self.DistanceANDCostView.isHidden = false
        self.TermsAndConditions.isHidden = false
        self.OrderNowBtn.isHidden = false
        self.PromoCodeView.isHidden = true
        NavBarLabel.text = "Towing (Accident)"
    }
    
    
    //Order View Outlets and functions
    @IBOutlet weak var ConfirmOrderView: UIView!
    
    @IBAction func CancelConfirmOrderView(_ sender: UIButton) {
        self.ConfirmOrderView.isHidden = true
    }
    
    
    
    
    
    @IBOutlet weak var viewMap: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMap.delegate = self
        let camera: GMSCameraPosition = GMSCameraPosition.camera(withLatitude: 48.857165, longitude: 2.354613, zoom: 8.0)
        viewMap.camera = camera
    }

    @IBAction func OrderNowFunc(_ sender: UIButton) {
        self.ConfirmOrderView.isHidden = false
    }
    @IBAction func NextFunc(_ sender: UIButton) {
        self.NextBTN.isHidden = true
        self.PromoCodeView.isHidden = false
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    

}
