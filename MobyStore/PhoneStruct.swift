//
//  PhoneStructwift.swift
//  MobyStore
//
//  Created by Yernar Dyussenbekov on 16.11.2024.
//

import Foundation
import SwiftyJSON

struct Phone {
    var name = ""
    var rating = 0
    var comments = 0
    var oldPrice = 0
    var price = 0
    var available = ""
    var basicCamera = ""
    var frontCamera = ""
    var ram = 0
    var rom = 0
    var akb = 0
    var processor = ""
    var coresOfProcessor = 8
    var freqencyOfProcessor = ""
    var OSVersion = ""
    var image = ""
    
    init (json: JSON) {
        if let item = json["name"].string{
            name = item
        }
        if let item = json["rating"].int{
            rating = item
        }
        
        if let item = json["comments"].int{
            comments = item
        }
        
        if let item = json["oldPrice"].int{
            oldPrice = item
        }
        
        if let item = json["price"].int{
            price = item
        }
        
        if let item = json["available"].string{
            available = item
        }
        
        if let item = json["basicCamera"].string{
            basicCamera = item
        }
        
        if let item = json["frontCamera"].string{
            frontCamera = item
        }
        
        if let item = json["ram"].int{
            ram = item
        }
        
        if let item = json["rom"].int{
            rom = item
        }
        
        if let item = json["akb"].int{
            akb = item
        }
        
        if let item = json["processor"].string{
            processor = item
        }
        
        if let item = json["coresOfProcessor"].int{
            coresOfProcessor = item
        }
        
        if let item = json["freqencyOfProcessor"].string{
            freqencyOfProcessor = item
        }
        
        if let item = json["OSVersion"].string{
            OSVersion = item
        }
       
        if let item = json["image"].string{
            image = item
        }
     
    }
}
