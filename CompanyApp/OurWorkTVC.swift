//
//  OurWorkTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Alamofire

class OurWorkTVC: UITableViewController {
    
    //MARK: Properties
    
    var allOurWork = [AboutUsFile]()
    
    var ourWorkFile = OurWorkFile()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self

        loadDataTest()
        
        ourWorkFile.downloadJsonData {
            
            // some code.. 
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return allOurWork.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ourWorkCellIdentifier = "OurWorkCell"
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ourWorkCellIdentifier, for: indexPath) as? OurWorkCell {
    
        let ourWork = allOurWork[indexPath.row]
        
        cell.ourWorkTitleLbl.text = ourWork.title
        cell.ourWorkSubtitleLbl.text = ourWork.subtitle
        cell.ourWorkImage.image = ourWork.photo

        return cell
        
        } else {
            
            return OurWorkCell()
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thisIsOurWork = allOurWork[indexPath.row]
        
        performSegue(withIdentifier: "toOurWorkDetailsVC", sender: thisIsOurWork)
        
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
        
        
        
        
        
        guard let test1 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage1, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test2 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage2, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test3 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage3, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test4 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage4, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test5 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage5, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test6 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage6, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test7 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage7, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test8 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage8, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let test9 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage9, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        allOurWork += [test1, test2, test3, test4, test5, test6, test7, test8, test9]
        
    }


}
