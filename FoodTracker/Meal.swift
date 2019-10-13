//
//  Meal.swift
//  FoodTracker
//
//  Created by Digital Vision on 13/10/2019.
//  Copyright © 2019 Digital Vision. All rights reserved.
//

import UIKit

class Meal{
    
    //MARK: Propertise
    var name:String
    var photo: UIImage?
    var rating:Int
    
    //MARK: Initialization
    init?(name:String,photo:UIImage?,rating:Int) {
        // Initialization should fail if there is no name or if the rating is negative.
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
