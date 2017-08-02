//
//  AboutUsTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/22/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class AboutUsTVC: UITableViewController {
    
    // MARK: Properties
    
    var allAboutUs = [AboutUsFile]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loading test data
        
        loadTestData()
        
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

        return allAboutUs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AboutUsCell", for: indexPath) as? AboutUsCell else {
            
            fatalError("Reusable cell is not configured properlly")
            
        }
        
        let aboutUs = allAboutUs[indexPath.row]
        
        cell.aboutUsImage?.image = aboutUs.photo
        cell.aboutUsTitleLbl?.text = aboutUs.title
        cell.aboutUsSubtitleLbl?.text = aboutUs.subtitle
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thisIsUs = allAboutUs[indexPath.row]
        
        performSegue(withIdentifier: "toAboutUsDetailsVC", sender: thisIsUs)

        
    }

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
    
    // Private functons for test data loading
    
    private func loadTestData () {
        
        let photoImage1 = UIImage(named: "Company#2.jpg")
        let photoImage2 = UIImage(named: "Company#3.jpg")
        let photoImage3 = UIImage(named: "Company#4.jpg")
        let photoImage4 = UIImage(named: "Company#5.jpg")
        let photoImage5 = UIImage(named: "Company#6.jpg")
        let photoImage6 = UIImage(named: "Company#7.jpg")
        let photoImage7 = UIImage(named: "Company#8.jpg")
        let photoImage8 = UIImage(named: "Company#9.jpg")
        let photoImage9 = UIImage(named: "Company#10.jpg")

        

        
        
        guard let testData1 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage1, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData2 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage2, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData3 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage3, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData4 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage4, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData5 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage5, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData6 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage6, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData7 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage7, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData8 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage8, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        guard let testData9 = AboutUsFile(title: "WeatherApp Relesed Today", photo: photoImage9, subtitle: "Continue reading in detailes article...") else {
            fatalError("Test data was not loaded successfully")
        }
        
        allAboutUs += [testData1, testData2, testData3, testData4, testData5, testData6, testData7, testData8, testData9]
        
        
    }
    

}
