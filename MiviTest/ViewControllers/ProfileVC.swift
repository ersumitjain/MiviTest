//
//  ProfileVC.swift
//  MiviTest
//
//  Created by Sumit on 07/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var tableViewProfile: UITableView!
    var profileDetails : DataModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.title = "Profile"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

//MARK:- UITableView Datasource
extension ProfileVC : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : DetailsCell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell")! as! DetailsCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.layoutMargins = UIEdgeInsets.zero
        
        if indexPath.row == 0 {
            cell.labelTitle.text = "Type"
            cell.labelDetails.text = profileDetails?.type
        }else if indexPath.row == 1 {
            cell.labelTitle.text = "Id"
            cell.labelDetails.text = profileDetails?.id
        }else if indexPath.row == 2 {
            cell.labelTitle.text = "Title"
            cell.labelDetails.text = profileDetails?.attributesData?.title
        }else if indexPath.row == 3 {
            cell.labelTitle.text = "First Name"
            cell.labelDetails.text = profileDetails?.attributesData?.first_name
        }else if indexPath.row == 4 {
            cell.labelTitle.text = "Last Name"
            cell.labelDetails.text = profileDetails?.attributesData?.last_name
        }else if indexPath.row == 5 {
            cell.labelTitle.text = "Email Address"
            cell.labelDetails.text = profileDetails?.attributesData?.email_address
        }else if indexPath.row == 6 {
            cell.labelTitle.text = "Date of Birth"
            cell.labelDetails.text = profileDetails?.attributesData?.date_of_birth
        }else if indexPath.row == 7 {
            cell.labelTitle.text = "Contact Number"
            cell.labelDetails.text = profileDetails?.attributesData?.contact_number
        }
        
        return cell
    }
    
    
}
extension ProfileVC : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return  80
    }
    
}
