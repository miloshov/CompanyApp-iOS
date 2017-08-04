//
//  SendQuestionVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/3/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class SendQuestionVC: UIViewController {
    

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBAction func SendBtnPressed(_ sender: UIButton) {
        
        if firstNameTextField.hasText && lastNameTextField.hasText && questionTextView.hasText{

            SuccessfullAlert()
            
        } else {
            
            UnseccessfullAlert()
            
        }
    }
    
    func SuccessfullAlert() {
        
        let fieldAlert: UIAlertController = UIAlertController(title: "Success", message: "Your email has been successfully sent. Thank you for your question.", preferredStyle: UIAlertControllerStyle.alert)
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        fieldAlert.addAction(okBtn)
        
        self.present(fieldAlert, animated: true, completion: nil)
    }
    
    
    func UnseccessfullAlert() {
        
        let fieldAlert: UIAlertController = UIAlertController(title: "Error", message: "You need to fill all the fields.", preferredStyle: UIAlertControllerStyle.alert)
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        fieldAlert.addAction(okBtn)
        
        self.present(fieldAlert, animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

