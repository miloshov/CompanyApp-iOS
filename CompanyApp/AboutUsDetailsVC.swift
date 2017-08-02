//
//  AboutUsDetailsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/23/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class AboutUsDetailsVC: UIViewController {
    
    // MARK: Properties
    
    var _aboutUs: AboutUsFile!

    @IBOutlet weak var detailsImageView: UIImageView!
    @IBOutlet weak var detailsTitleLbl: UILabel!
    @IBOutlet weak var detailsSubtitileLbl: UILabel!
    
    var detailsAboutUs: AboutUsFile {
        
        get {
            
            return _aboutUs
            
        } set {
            
            _aboutUs = newValue
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This does not work. Dont know why...

        detailsImageView.image = detailsAboutUs.photo
        detailsTitleLbl.text = detailsAboutUs.title
        detailsSubtitileLbl.text = detailsAboutUs.subtitle
        
    }


}
