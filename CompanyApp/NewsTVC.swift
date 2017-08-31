//
//  NewsTVC.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/24/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit

class NewsTVC: UITableViewController {
    
    var allNews = [AboutUsFile]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNews.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let newsCellIdentifier = "NewsCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: newsCellIdentifier, for: indexPath) as? NewsCell else {
            
            fatalError("Reusable cell is not configured properlly")
        }
        
        let news = allNews[indexPath.row]
        
        cell.newsImageView.image = news.photo
        cell.newsTitleLbl.text = news.title
        cell.newsSubtitleLbl.text = news.subtitle
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thoseAreNews = allNews[indexPath.row]
        
        performSegue(withIdentifier: "toNewsDetailsVC", sender: thoseAreNews)
        
    }
    
    func downlaodNewsData (){
        
        
        
    }
    
   
}

