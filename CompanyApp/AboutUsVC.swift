//
//  AboutUsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/22/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class AboutUsVC: UIViewController {
    
    // MARK: Properties
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func CallUsBtnPressed(_ sender: UIButton) {
        
        if #available(iOS 10.0, *) {
            callNumber(phoneNumber: "+381600464060")
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    

}
