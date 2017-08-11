//
//  OurWorkFile.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/7/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import Foundation
import Alamofire

class OurWorkFile {
    
    private var _name: String!
    private var _date: String!
    private var _details: String!
    private var _address: String!
    private var _city: String!
    private var _lat: String!
    private var _lon: String!
    private var _image: String!
    
    var name: String {
        
        if _name == nil {
            
            _name = ""
            
        }
        
        return _name
            
    }
    
    var date: String {
        
        if _date == nil {
            
            _date = ""
            
        }
        
        let dateFormattor = DateFormatter()
        dateFormattor.dateStyle = .long
        dateFormattor.timeStyle = .none
        let currentDate = dateFormattor.string(from: Date())
        self._date = "Danas, \(currentDate)"
        
        return _date
        
    }
    
    var details: String {
        
        if _details == nil {
            
            _details = ""
            
        }
        
        return _details
        
    }
    
    var address: String {
        
        if _address == nil {
            
            _address = ""
            
        }
        
        return _address
        
    }
    
    var city: String {
        
        if _city == nil {
            
            _city = ""
            
        }
        
        return _city
        
    }
    
    var lat: String {
        
        if _lat == nil {
            
            _lat = ""
            
        }
        
        return _lat
        
    }
    
    var lon: String {
        
        if _lon == nil {
            
            _lon = ""
            
        }
        
        return _lon
        
    }
    
    var image: String {
        
        if _image == nil {
            
            _image = ""
            
        }
        
        return _image
        
    }
    
    init (ourWorkDict: Dictionary<String, AnyObject>) {
        
        if let newName = ourWorkDict["name"] as? String {
            
            self._name = newName
            
        }
        
        if let newDetails = ourWorkDict["details"] as? String {
            
            self._details = newDetails
            
        }
        
        if let newImage = ourWorkDict["image"] as? String {
            
            self._image = newImage
            
        }
        
        if let newDate = ourWorkDict["date"] as? String {
            
            self._date = newDate
            
        }
        
        if let newAddress = ourWorkDict["address"] as? String {
            
            self._address = newAddress
            
        }
        
        if let newCity = ourWorkDict["city"] as? String {
            
            self._city = newCity
            
        }
        
        if let newLat = ourWorkDict["lat"] as? String {
            
            self._lat = newLat
            
        }
        
        if let newLon = ourWorkDict["lon"] as? String {
            
            self._lon = newLon
            
        }
        
        
    }
    
//    func downloadJsonData (completed: DownloadComplete) {
//        
//        let mainUrl = URL(string: ALL_EDUCATION_URL)!
//        
//        Alamofire.request(mainUrl).responseJSON { respnse in
//            
//            let result = respnse.result
//            
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                
//                if let mainRow = dict["Educations"] as? [Dictionary<String, AnyObject>] {
//                    
//                    for name in mainRow {
//                        
//                        if let newName = name["name"] as? String {
//                            
//                            self._name = newName
//                            
//                            print("\n\(newName)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for date in mainRow {
//                        
//                        if let newDate = date["date"] as? String {
//                            
//                            self._date = newDate
//                            
//                            print("\n\(newDate)\n")
//                        }
//                        
//                    }
//                    
//                    for details in mainRow {
//                        
//                        if let newDetails = details["details"] as? String {
//                            
//                            self._details = newDetails
//                            
//                            print("\n\(newDetails)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for address in mainRow {
//                        
//                        if let newAddress = address["address"] as? String {
//                            
//                            self._address = newAddress
//                            
//                            print("\n\(newAddress)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for city in mainRow {
//                        
//                        if let newCity = city["city"] as? String {
//                            
//                            self._city = newCity
//                            
//                            print("\n\(newCity)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for lat in mainRow {
//                        
//                        if let newLat = lat["lat"] as? String {
//                            
//                            self._lat = newLat
//                            
//                            print("\n\(newLat)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for lon in mainRow {
//                        
//                        if let newLon = lon["lon"] as? String {
//                            
//                            self._lon = newLon
//                            
//                            print("\n\(newLon)\n")
//                            
//                        }
//                        
//                    }
//                    
//                    for image in mainRow {
//                        
//                        if let newImage = image["image"] as? String {
//                            
//                            self._image = newImage
//                            
//                            print("\n\(newImage)\n")
//                            
//                        }
//                        
//                    }
//                    
//                }
//                
//            }
//        }
//        
//        completed()
//        
//    }
    
   }


