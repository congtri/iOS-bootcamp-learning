//
//  SelfDrivingCar.swift
//  ClassAndObject
//
//  Created by CongTri on 4/22/19.
//  Copyright © 2019 CongTri. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    var Destination : String?   // nil value (nil means nothing)
    
    override func drive() {
        //super.drive()
        if self.Destination == nil {
            print("No destination to go")
        }
        else {
            print("Self driving to \(Destination!)") // '!' will ignor all warning or suggestion from Swift
        }
    }
}
