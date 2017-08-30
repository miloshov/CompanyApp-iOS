//
//  NewsDetailsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class NewsDetailsVC: UIViewController {
    
    // MARK: Porperties
    
    @IBOutlet weak var imageLbl: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func shareBtnPressed(_ sender: UIButton) {
        
        let shareButton = UIActivityViewController(activityItems: [imageLbl.image!, textLbl.text!], applicationActivities: nil)
        
        shareButton.popoverPresentationController?.sourceView = self.view
        
        self.present(shareButton, animated: true, completion: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

}
