//
//  OurWorkDetailsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Alamofire

class OurWorkDetailsVC: UIViewController {
    
    // MARK: Properties

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var imageLbl: UIImageView!

    
    // MARK: Back Button dismiss configured
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    // MARK: Share Button configured
    
    @IBAction func shareBtnPressed(_ sender: UIButton) {
        
        let shareButton = UIActivityViewController(activityItems: [imageLbl.image!, textLbl.text!], applicationActivities: nil)
        
        shareButton.popoverPresentationController?.sourceView = self.view
        
        self.present(shareButton, animated: true, completion: nil)
        
    }
    
    func configureView (view: OurWorkFile) {
        
        titleLbl.text = view.name
        dateLbl.text = view.date
        textLbl.text = view.details
        addressLbl.text = view.address
        cityLbl.text = view.city
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

}
