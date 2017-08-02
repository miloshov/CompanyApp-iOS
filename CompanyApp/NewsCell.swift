//
//  NewsCell.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    // MARK: Properties

    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var newsSubtitleLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
