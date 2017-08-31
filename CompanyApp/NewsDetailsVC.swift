//
//  NewsDetailsVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Alamofire

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
    
    func configureDetailsVC(news: NewsFile) {
        
        titleLbl.text = news.name
        textLbl.text = news.details
        downloadImage(news.image)
        
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
