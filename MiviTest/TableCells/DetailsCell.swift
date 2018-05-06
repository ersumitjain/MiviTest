//
//  DetailsCell.swift
//  MiviTest
//
//  Created by Sumit on 07/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
