//
//  Car.swift
//  ClassAndObject
//
//  Created by CongTri on 4/20/19.
//  Copyright © 2019 CongTri. All rights reserved.
//

import Foundation

enum carType {
    case Sedan
    case SUV
    case Sport
}

class Car {
    var numberOfSeat : Int = 4
    var color : String = "Black"
    var type : carType = carType.Sedan
    
    init() {
        
    }
    
    convenience init(numberOfSeat : Int, color : String, type : carType){
        self.init()
        self.color = color
        self.type = type
        self.numberOfSeat = numberOfSeat
    }
    
    func drive() {
        print("Car is moving")
    }
    
    func showCarAttribute() {
        print("Color: \(self.color)")
        print("Number of seat: \(self.numberOfSeat)")
        print("Type: \(self.type)")
    }
}
