//
//  SendQuestionVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/3/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import MessageUI

class SendQuestionVC: UIViewController, MFMailComposeViewControllerDelegate {
    

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBAction func SendBtnPressed(_ sender: UIButton) {
        
        if fullNameTextField.hasText && questionTextView.hasText{
    
            let mailComposeViewController = configuredMailComposeViewController()
    
            if MFMailComposeViewController.canSendMail() {
    
            self.present(mailComposeViewController, animated: true, completion: nil)
        
            }
            
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
        
        let fieldAlert: UIAlertController = UIAlertController(title: "Error", message: "You need to fill name and text fields.", preferredStyle: UIAlertControllerStyle.alert)
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
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        
        let mailComposerVC = MFMailComposeViewController()
        
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["development@hajora.com"])
        mailComposerVC.setSubject("\(String(describing: fullNameTextField.text!)) want to ask you a question")
        mailComposerVC.setMessageBody(questionTextView.text, isHTML: false)
        
        return mailComposerVC
    }
    
    // MARK: MFMailComposeViewControllerDelegate
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
        
    }

    

    /*
     import Foundation
     import UIKit
     import MessageUI
     
     class ViewController: ViewController,MFMailComposeViewControllerDelegate {
     
     @IBAction func sendEmailButtonTapped(sender: AnyObject) {
     let mailComposeViewController = configuredMailComposeViewController()
     if MFMailComposeViewController.canSendMail() {
     self.presentViewController(mailComposeViewController, animated: true, completion: nil)
     } else {
     self.showSendMailErrorAlert()
     }
     }
     
     func configuredMailComposeViewController() -> MFMailComposeViewController {
     let mailComposerVC = MFMailComposeViewController()
     mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
     
     mailComposerVC.setToRecipients(["nurdin@gmail.com"])
     mailComposerVC.setSubject("Sending you an in-app e-mail...")
     mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
     
     return mailComposerVC
     }
     
     func showSendMailErrorAlert() {
     let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
     sendMailErrorAlert.show()
     }
     
     // MARK: MFMailComposeViewControllerDelegate
     
     func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
     controller.dismissViewControllerAnimated(true, completion: nil)
     
     }
     }
    */

}

