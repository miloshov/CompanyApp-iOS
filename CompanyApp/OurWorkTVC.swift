//
//  OurWorkTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class OurWorkTVC: UITableViewController {
    
    //MARK: Properties
    
    var allOurWork = [AboutUsFile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDataTest()
        
        tableView.delegate = self
        tableView.dataSource = self
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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ourWorkCellIdentifier, for: indexPath) as? OurWorkCell else {
            
            fatalError("Reusable cell is not configured properlly")
        }
        
        let ourWork = allOurWork[indexPath.row]
        
        cell.ourWorkImage.image = ourWork.photo
        cell.ourWorkTitleLbl.text = ourWork.title
        cell.ourWorkSubtitleLbl.text = ourWork.subtitle
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thisIsOurWork = allOurWork[indexPath.row]
        
        performSegue(withIdentifier: "toOurWorkDetailsVC", sender: thisIsOurWork)
        
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
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
        
        
        
        
        
        guard let testOurWork1 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage1, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork2 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage2, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork3 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage3, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork4 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage4, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork5 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage5, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork6 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage6, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork7 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage7, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork8 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage8, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testOurWork9 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage9, subtitle: "In this lesson, you save a meal list across FoodTracker app sessions. Understanding and implementing data persistence is a vital part of iOS app development. iOS has many persistent data storage solutions; in this lesson, you’ll use NSCoding as the data ") else {
            fatalError("Test data was not loaded successfully")
        }
        
        allOurWork += [testOurWork1, testOurWork2, testOurWork3, testOurWork4, testOurWork5, testOurWork6, testOurWork7, testOurWork8, testOurWork9]
        
    }
}
