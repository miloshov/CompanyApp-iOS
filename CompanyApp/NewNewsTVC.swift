//
//  NewNewsTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/30/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class NewNewsTVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var allNews = [AboutUsFile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDataTest()

    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let newsCellIdentifier = "newNewsCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: newsCellIdentifier, for: indexPath) as? NewsCell else {
            
            fatalError("Reusable cell is not configured properlly")
        }
        
        let news = allNews[indexPath.row]
        
        cell.newsImageView.image = news.photo
        cell.newsTitleLbl.text = news.title
        cell.newsSubtitleLbl.text = news.subtitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thoseAreNews = allNews[indexPath.row]
        
        performSegue(withIdentifier: "toNewsDetailsVC", sender: thoseAreNews)
        
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
        
        allNews += [test1, test2, test3, test4, test5, test6, test7, test8, test9]
        
    }

}
