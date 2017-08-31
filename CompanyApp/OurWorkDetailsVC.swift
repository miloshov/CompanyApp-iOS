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
    @IBOutlet weak var textLbl: UITextView!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var imageLbl: UIImageView!
    
    var getTitle = String()
    var getDate = String()
    var getText = String()
    var getAddress = String()
    var getCity = String()
    

    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = getTitle
        dateLbl.text = getDate
        textLbl.text = getText
        addressLbl.text = getAddress
        cityLbl.text = getCity
    
    }
    
    func downloadImage(_ stringURL: String  ) {
        
        Alamofire.request(stringURL).responseImage { (response) in
            
            if let image = response.result.value {
                
                DispatchQueue.main.async { [unowned self] in
                    
                    self.imageLbl.image = image
                }
                
            } else {
                
                let url = URL(string: "http://www.visitcolumbiamo.com/wp-content/themes/COMO/img/photo-unavailable.jpg")!
                DispatchQueue.global(qos: .background).async {
                    
                    do {
                        
                        let data = try Data(contentsOf: url)
                        DispatchQueue.main.async {
                            
                            self.imageLbl.image = UIImage(data: data)
                            
                        }
                        
                    } catch {
                        
                        // handle error
                        
                    }
                    
                }
                
            }
            
        }
        
    }

}
