//
//  AllNewsTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/31/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class AllNewsTVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var allNews = [NewsFile]()
    var ourNews: NewsFile!

    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.isHidden = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        downlaodNewsData {
            
            self.downloadOurNewsImage()
            
        }
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allNews.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let newsCellIdentifier = "NewsCell"
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: newsCellIdentifier, for: indexPath) as? NewsCell {
        
        let news = allNews[indexPath.row]
        
        cell.configureCell(news: news)
            
        self.tableView.isHidden = false
        
        return cell
            
        } else {
            
            return NewsCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let news = allNews[indexPath.row]
        
        performSegue(withIdentifier: "toNewsDetailsVC", sender: news)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toNewsDetailsVC" {
            
            if let detailsVC = segue.destination as? NewsDetailsVC {
                
                if let news = sender as? NewsFile {
                    
                    detailsVC.news = news
                }
            }
        }
    }
    
    func downlaodNewsData (completed: @escaping DownloadComplete) {
        
        Alamofire.request(ALL_NEWS_URL).responseJSON { (response) in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let dictList = dict["News"] as? [Dictionary<String, AnyObject>] {
                    
                    for obj in dictList {
                        
                        let ourNews = NewsFile(ourNewsDict: obj)
                        
                        self.allNews.append(ourNews)
                        
                    }
                    
                    self.tableView.reloadData()
                    
                }
                
            }
            
            completed()
        
        }
        
    }
    
    func downloadOurNewsImage() {
        
        Alamofire.request("https://httpbin.org/image/png").responseImage { (response) in
         
            debugPrint(response)
            debugPrint(response.result)
            
            if let image = response.result.value {
                
                print("Image Downloaded: \(image)")
                
            }
            
        }
        
    }
    
}
