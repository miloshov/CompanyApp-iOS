//
//  JSONdata.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/8/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import Foundation

struct JSONdata {
    
    private var _name: String!
    private var _date: String!
    private var _details: String!
    private var _address: String!
    private var _city: String!
    private var _lat: String!
    private var _lon: String!
    private var _image: String!
    
    enum SerializationError: Error {
        case missing(String)
        case invalid(String, Any)
    }
    
    
    
    init(json: [String: Any]) throws {
        
        guard let name = json["name"] as? String else {throw SerializationError.missing("Name is missing")}
        
        guard let date = json["date"] as? String else {throw SerializationError.missing("Date is missing")}
        
        guard let details = json["details"] as? String else {throw SerializationError.missing("Details are missing")}
        
        guard let address = json["address"] as? String else {throw SerializationError.missing("Address is missling")}
        
        guard let city = json["city"] as? String else {throw SerializationError.missing("City name is missing")}
        
        guard let lat = json["lat"] as? String else {throw SerializationError.missing("Lattitude is missing")}
        
        guard let lon = json["lon"] as? String else {throw SerializationError.missing("Longitude is missing")}
        
        guard let image = json["image"] as? String else {throw SerializationError.missing("Image is missing")}
        
        self._name = name
        self._date = date
        self._details = details
        self._address = address
        self._city = city
        self._lat = lat
        self._lon = lon
        self._image = image
        
    }
    
    static let BASE_URL = "http://gdecemo.byethost33.com/MediaApp/educations.php/"
    
    
    static func educationJSON (completed: @escaping ([JSONdata]) -> ()) {
        
        let url = BASE_URL
        
        let request = URLRequest(url: URL(string: url)!)
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            var jsonArray: [JSONdata] = []
            
            if let data = data {
                
                do {
                    
                    if let dict = try JSONSerialization.jsonObject(with: data, options: [] ) as? [String: Any] {
                        
                        if let mainDict = dict["Educations"] as? [[String: Any]] {
                            
                            for dictPoint in mainDict {
                                
                                if let dictObj = try? JSONdata(json: dictPoint) {
                                    
                                    jsonArray.append(dictObj)
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                } catch {
                    
                    print(error.localizedDescription)
                    
                }
                
                completed(jsonArray)
                
            }
            
        }
        
        task.resume()
        

        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
