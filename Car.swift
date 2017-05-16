//
//  Car.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 16/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import Foundation
import UIKit

class Car {
    var carName : String
    var carPrice : Int
    var carImage : UIImage
    var carStatus : String

    
    init(name : String, pri : Int, img : UIImage, status : String) {
        
        self.carName = name
        self.carPrice = pri
        self.carImage = img
        self.carStatus = status
        
        }
}

class Cardetails {
    
        var carImage : UIImage
        var carName : String
        var carBodytype : String
        var carColour : String
        var carRegplate : String
        var carOdometer : Int
        var carEngine : String
        var carTransmission : String
        var carDrivetype : String
        var carRegexpiry : String
        
        init(img : UIImage, name : String, btype : String,  colour : String, rplate : String, ometer : Int, eng : String, transmission : String, dtype : String, rexpiry : String) {
            
            self.carImage = img
            self.carName = name
            self.carBodytype = btype
            self.carColour = colour
            self.carRegplate = rplate
            self.carOdometer = ometer
            self.carEngine = eng
            self.carTransmission = transmission
            self.carDrivetype = dtype
            self.carRegexpiry = rexpiry
        }
        
    }

