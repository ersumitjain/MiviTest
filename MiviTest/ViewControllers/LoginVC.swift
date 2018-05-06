//
//  LoginVC.swift
//  MiviTest
//
//  Created by Sumit on 06/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit
import SwiftyJSON

class LoginVC: UIViewController {
    
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldMsn: UITextField!
    
    var result : ResultModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fetching data from json file
        
        if let path = Bundle.main.path(forResource: "collection", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe)
                let json = JSON(data: jsonData as Data)
                result = ResultModel.init(jsonObject: json)
            } catch {}
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Login action
    @IBAction func loginAction(_ sender: Any) {
        self.view.endEditing(true)
        
        let email:String = (result?.data?.attributesData?.email_address)!
        let msn:String = (result?.included?[0].attributes?.msn)!
        
        if txtFieldEmail.text == email && txtFieldMsn.text == msn {
            
            self.performSegue(withIdentifier: "SegueToHome", sender: self)
        }else{
            let alert = UIAlertController(title: "Login Failed", message: "Please check your credentials", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    // Segue to transition through screens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? UINavigationController {
            if let destinationVC = controller.topViewController as? HomeVC {
                destinationVC.modelResponse = result
            }
        }
    }
    
    
    
}
