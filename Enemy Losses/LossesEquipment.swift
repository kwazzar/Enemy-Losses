//
//  russiaLossesEquipment.swift
//  Enemy Losses
//
//  Created by Quasar on 24.08.2023.
//

import Foundation


struct LossesEquipment: DataType {
    
    let date: String
    let day: Int
    let aircraft: Int
    let helicopter: Int
    let tank: Int
    let aPC: Int
    let fieldArtillery: Int
    let mRL: Int
    let militaryAuto: Int?
    let fuelTank: Int?
    let drone: Int
    let navalShip: Int
    let antiAircraftWarfare: Int
    let specialEquipment: Int?
    let mobileSRBMSystem: Int?
    let greatestLossesDirection: String?
    let vehiclesAndFuelTanks: Int?
    let cruiseMissiles: Int?
  
    
    enum CodingKeys: String, CodingKey {
        case date
        case day
        case aircraft
        case helicopter
        case tank
        case aPC = "APC"
        case fieldArtillery = "field artillery"
        case mRL = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone = "drone"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case mobileSRBMSystem = "mobile SRBM system"
        case greatestLossesDirection = "greatest losses direction"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"

        
    }
    
    init?(json: [String:Any]) {

        let date = json["date"] as! String
        let day = json["day"] as! Int
        let aircraft = json["aircraft"] as! Int
        let helicopter = json["helicopter"] as! Int
        let tank = json["tank"] as! Int
        let aPC = json["APC"] as! Int
        let fieldArtillery = json["field artillery"] as! Int
        let mRL = json["MRL"] as! Int
        let militaryAuto = json["military auto"] as? Int
        let fuelTank = json["fuel tank"] as? Int
        let drone = json["drone"] as! Int
        let navalShip = json["naval ship"] as! Int
        let antiAircraftWarfare = json["anti-aircraft warfare"] as! Int
        let specialEquipment = json["special equipment"] as? Int
        let mobileSRBMSystem = json["mobile SRBM system"] as? Int
        let greatestLossesDirection = json["greatest losses direction"] as? String
        let vehiclesAndFuelTanks = json["vehicles and fuel tanks"] as? Int
        let cruiseMissiles = json["cruise missiles"] as? Int
        
        self.date = date
        self.day = day
        self.aircraft = aircraft
        self.helicopter = helicopter
        self.tank = tank
        self.aPC = aPC
        self.fieldArtillery = fieldArtillery
        self.mRL = mRL
        self.militaryAuto = militaryAuto
        self.fuelTank = fuelTank
        self.drone = drone
        self.navalShip = navalShip
        self.antiAircraftWarfare = antiAircraftWarfare
        self.specialEquipment = specialEquipment
        self.mobileSRBMSystem = mobileSRBMSystem
        self.greatestLossesDirection = greatestLossesDirection
        self.vehiclesAndFuelTanks = vehiclesAndFuelTanks
        self.cruiseMissiles = cruiseMissiles

}
}
