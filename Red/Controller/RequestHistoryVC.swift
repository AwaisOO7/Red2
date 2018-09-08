//
//  RequestHistoryVC.swift
//  Red
//
//  Created by master on 9/7/18.
//  Copyright © 2018 XcoderZ. All rights reserved.
//

import UIKit

class RequestHistoryVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:RequestHistoryTVCell = RHtableView.dequeueReusableCell(withIdentifier: "cell") as! RequestHistoryTVCell
         cell.DateAndTime.text = "24 April 2016, 22:34"
         cell.Amount.text = "$35.50"
         cell.StartAddress.text = "Victory street"
         cell.EndingAddress.text = "Blk 165 BT meerah central"
        return cell
   }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    @IBOutlet weak var RHtableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        RHtableView.dataSource = self
        RHtableView.delegate = self
        // Do any additional setup after loading the view.
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
