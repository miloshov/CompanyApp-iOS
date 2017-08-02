//
//  OurWorkCell.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class OurWorkCell: UITableViewCell {
    
    //MARK:Properties
    
    @IBOutlet weak var ourWorkImage: UIImageView!
    @IBOutlet weak var ourWorkTitleLbl: UILabel!
    @IBOutlet weak var ourWorkSubtitleLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
