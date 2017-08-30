//
//  OurPartnersVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/9/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class OurPartnersVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: Properties
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    var allOurPartners = [PartnersFile]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDataTest()
        
        collection.dataSource = self
        collection.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OurPartnersCell", for: indexPath) as? OurPartnersCell {
            
            let partners = allOurPartners[indexPath.row]
            
            cell.configureCell(partners: partners)
            
            
            return cell
            
        } else {
            
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toPartnerDetailsVC", sender: OurPartnersVC())
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return allOurPartners.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 150, height: 150)
    }
    
    private func loadDataTest () {
        
        let photoImage1 = UIImage(named: "Company#2.jpg")
        let photoImage2 = UIImage(named: "Company#3.jpg")
        let photoImage3 = UIImage(named: "Company#4.jpg")
        let photoImage4 = UIImage(named: "Company#5.jpg")
        let photoImage5 = UIImage(named: "Company#6.jpg")
        let photoImage6 = UIImage(named: "Company#7.jpg")
        let photoImage7 = UIImage(named: "Company#8.jpg")
        let photoImage8 = UIImage(named: "Company#9.jpg")
        let photoImage9 = UIImage(named: "Company#10.jpg")
        
        
        
        guard let testOurPartners1 = PartnersFile(name: "Partner 1", photo: photoImage1) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners2 = PartnersFile(name: "Partner 2", photo: photoImage2) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners3 = PartnersFile(name: "Partner 3", photo: photoImage3) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners4 = PartnersFile(name: "Partner 4", photo: photoImage4) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners5 = PartnersFile(name: "Partner 5", photo: photoImage5) else {
            fatalError("Test data was not loaded successfully")
        }
        guard let testOurPartners6 = PartnersFile(name: "Partner 6", photo: photoImage6) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners7 = PartnersFile(name: "Partner 7", photo: photoImage7) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners8 = PartnersFile(name: "Partner 8", photo: photoImage8) else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurPartners9 = PartnersFile(name: "Partner 9", photo: photoImage9) else {
            fatalError("Test data was not loaded successfully")
        }
        
        allOurPartners += [testOurPartners1, testOurPartners2, testOurPartners3, testOurPartners4, testOurPartners5, testOurPartners6, testOurPartners7, testOurPartners8, testOurPartners9]
        
    }
    
    
}
