//
//  OurWorkCell.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Alamofire

class OurWorkCell: UITableViewCell {
    
    //MARK:Properties
    
    @IBOutlet weak var ourWorkImage: UIImageView!
    @IBOutlet weak var ourWorkTitleLbl: UILabel!
    @IBOutlet weak var ourWorkSubtitleLbl: UILabel!

    
    func configureCell (work: OurWorkFile) {
        
        ourWorkTitleLbl.text = work.name
        ourWorkSubtitleLbl.text = work.details
        
        downloadImage()
        
    }
    
    
    func downloadImage() {
        
        Alamofire.request("https://upload.wikimedia.org/wikipedia/commons/1/1c/Earth_surface_NGDC_2000.jpg").downloadProgress(closure: { (progress) in
            
            
        }).responseData { (response) in

            
            }
            
        }
        
        
        
    }
    

