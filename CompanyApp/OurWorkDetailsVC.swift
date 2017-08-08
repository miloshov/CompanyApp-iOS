//
//  OurWorkDetailsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class OurWorkDetailsVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var imageLbl: UIImageView!
    
    @IBAction func registrationBtnPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func locationBtnPressed(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func confugureDetailView(ourWrok: OurWorkFile) {
    
        titleLbl.text = ourWrok.name
        dateLbl.text = ourWrok.date
        textLbl.text = ourWrok.details
        addressLbl.text = ourWrok.address
        cityLbl.text = ourWrok.city
        imageLbl.image = UIImage(named: ourWrok.image)
        
    }

}
