//
//  OurPartnersCell.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/9/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class OurPartnersCell: UICollectionViewCell {
    
    @IBOutlet weak var partnersImage: UIImageView!
    
    @IBOutlet weak var partnersLabel: UILabel!
    
    var partners: PartnersFile!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell (partners: PartnersFile) {
        
        self.partners = partners
        
        partnersLabel.text = partners.name
        partnersImage.image = partners.photo //ovako smo povezali partnersImage odavde i photo iz PartnersFile-a, a load-ovali smo slike prema kodu u OurPartnersVC.
        
    }
}
