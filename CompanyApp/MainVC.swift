//
//  MainVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/22/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import FirebaseInstanceID
import Alamofire

class MainVC: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var mainScreenImage: UIImageView!
    
    @IBAction func aboutUsBtnPressed(_ sender: UIButton) {
    }
    @IBAction func newsBtnPressed(_ sender: UIButton) {
    }
    @IBAction func ourWorkBtnPressed(_ sender: UIButton) {
    }
    @IBAction func contactBtnPressed(_ sender: UIButton) {
    }
    @IBAction func callUsNowBtnPressed(_ sender: UIButton) {
        
        if #available(iOS 10.0, *) {
            callNumber(phoneNumber: "+381600464060")
        } else {
            print("This function supprots iOS 10.0 or newer")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Messaging.messaging().subscribe(toTopic: "/topics/news")
        
    }  
}

