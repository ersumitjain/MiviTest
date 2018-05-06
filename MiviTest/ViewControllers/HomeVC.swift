//
//  HomeVC.swift
//  MiviTest
//
//  Created by Sumit on 07/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

     var modelResponse : ResultModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func subscriptionDetailClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueToSubcription", sender: self)
    }
    @IBAction func productDetailsClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueToProduct", sender: self)
    }
    
    @IBAction func profileDetailsClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueToProfile", sender: self)
    }
    
    
    // Segue to transition through screens
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueToSubcription" {
            let vc = segue.destination as! SubsCriptionVC
            vc.subcriptionDetails = modelResponse?.included?[1]
            
        }else if segue.identifier == "SegueToProduct" {
            let vc = segue.destination as! ProductVC
            vc.productDetails = modelResponse?.included?[2]
            
        } else if segue.identifier == "SegueToProfile" {
            let vc = segue.destination as! ProfileVC
            vc.profileDetails = modelResponse?.data
        }
    }
    
    
}
