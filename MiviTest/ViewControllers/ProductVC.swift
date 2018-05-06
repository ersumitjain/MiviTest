//
//  ProductVC.swift
//  MiviTest
//
//  Created by Sumit on 07/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {

     var productDetails : IncludedModel?
    
    @IBOutlet weak var tableViewProduct: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Product"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//MARK:- UITableView Datasource
extension ProductVC : UITableViewDataSource {
    
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
            cell.labelDetails.text = productDetails?.type
        }else if indexPath.row == 1 {
            cell.labelTitle.text = "Id"
            cell.labelDetails.text = productDetails?.id
        }else if indexPath.row == 2 {
            cell.labelTitle.text = "Name"
            cell.labelDetails.text = productDetails?.attributes?.name
        }else if indexPath.row == 3 {
            cell.labelTitle.text = "Price"
            cell.labelDetails.text = productDetails?.attributes?.price
        }
        
        return cell
    }
    
    
}

extension ProductVC : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return  80
    }
    
}
