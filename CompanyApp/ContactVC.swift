//
//  ContactVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/3/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class ContactVC: UIViewController {
    
    // MARK: Properties
    
    
    @IBAction func CallUsBtnPressed(_ sender: UIButton) {
        
        if #available(iOS 10.0, *) {
            callNumber(phoneNumber: "+381600464060")
        } else {
            print("This function supprots iOS 10.0 or newer")
        }
        
    }
    
    @IBAction func AskUsBtnPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toSendQuestionVC", sender: ContactVC())
        
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
