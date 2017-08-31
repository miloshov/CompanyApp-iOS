//
//  NewsFile.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/31/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import Foundation
import Alamofire

class NewsFile {
    
    private var _name: String!
    private var _date: String!
    private var _details: String!
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
        
        return _date
        
    }
    
    var details: String {
        
        if _details == nil {
            
            _details = ""
        
    }
        
        return _details

    }
    
    var image: String {
        
        if _image == nil {
            
            _image = ""
            
        }
        
        return _image
        
    }
    
    
    
}

