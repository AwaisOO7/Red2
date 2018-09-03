//
//  ViewController.swift
//  Red
//
//  Created by master on 9/3/18.
//  Copyright © 2018 XcoderZ. All rights reserved.
//

import UIKit

class Login: UIViewController , UIPickerViewDelegate ,UIPickerViewDataSource{
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Type Selected = \(pickerData[row])")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.UserTypePickerView.isHidden = true
        }
    }

    @IBOutlet weak var UserTypePickerView: UIPickerView!
   var pickerData = ["User", "Service Provider", "Workshop"]
    override func viewDidLoad() {
        super.viewDidLoad()
        UserTypePickerView.isHidden = true
        UserTypePickerView.dataSource = self
        UserTypePickerView.delegate = self
        
    }

    @IBAction func SelectUserType(_ sender: UIButtonStyle) {
        if(UserTypePickerView.isHidden == true)
        {
            UserTypePickerView.isHidden = false
        }
        else
        {
            UserTypePickerView.isHidden = true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

