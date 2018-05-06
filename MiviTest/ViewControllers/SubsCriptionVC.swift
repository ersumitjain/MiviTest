//
//  SubsCriptionVC.swift
//  MiviTest
//
//  Created by Sumit on 07/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit

class SubsCriptionVC: UIViewController {
    
      var subcriptionDetails : IncludedModel?

    @IBOutlet weak var tableViewSubcription: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Subscription"
    }
}


//MARK:- UITableView Datasource
extension SubsCriptionVC : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : DetailsCell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell")! as! DetailsCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.layoutMargins = UIEdgeInsets.zero
        
        if indexPath.row == 0 {
            cell.labelTitle.text = "Type"
            cell.labelDetails.text = subcriptionDetails?.type
        }else if indexPath.row == 1 {
            cell.labelTitle.text = "Id"
            cell.labelDetails.text = subcriptionDetails?.id
        }else if indexPath.row == 2 {
            cell.labelTitle.text = "Data-Balance"
            cell.labelDetails.text = subcriptionDetails?.attributes?.data_balance
        }else if indexPath.row == 3 {
            cell.labelTitle.text = "Expiry-Date"
            cell.labelDetails.text = subcriptionDetails?.attributes?.expiry_date
        }
        
               return cell
        
    }
    
    
    
}
extension SubsCriptionVC : UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return  80
    }

}
