//
//  PartnersFile.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 8/9/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import Foundation
import UIKit

class PartnersFile {
    
    //MARK: Properties
    
    var _photo: UIImage?
    var _name: String!
    
    
    
    var photo: UIImage? {
        
        return _photo
    }
    
    var name: String {
    
    return _name
    }
    
    //MARK: Initialization
    
    init? (name: String, photo: UIImage?) {
        
        _photo = photo
        _name = name
    }
    
}
