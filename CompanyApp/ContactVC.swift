//
//  ContactVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/3/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class ContactVC: UIViewController {
    
    
    @IBAction func CallUsBtnPressed(_ sender: UIButton) {
        
        if #available(iOS 10.0, *) {
            callNumber(phoneNumber: "+381600464060")
        } else {
            print("This function supprots iOS 10.0 or newer")
        }
        
    }
    

    @IBAction func SendQuestionBtnPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toSendQuestionVC", sender: ContactVC())
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
