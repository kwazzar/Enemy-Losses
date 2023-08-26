//
//  russiaLossesEquipment.swift
//  Enemy Losses
//
//  Created by Quasar on 24.08.2023.
//

import Foundation


struct LossesEquipment: Codable {
    
    let data: String?
    let day: Int?
    let aircraft: Int?
    //    let helicopter: Int
    //    let tank: Int
    //    let APC: Int
    //    let fieldArtillery: Int
    //    let MRL: Int
    //    let militaryAuto: Int?
    //    let fuelTank: Int?
    //    let drone: Int
    //    let navalShip: Int
    //    let antiAircraftWarfare: Int?
    //    let specialEquipment: Int?
    //    let mobileSRBMSystem: Int?
    //    let greatestLossesDirection: String?
    //    let cruiseMissiles: Int?
    //    let vehiclesAndFuelTanks: Int?
    
    init?(json: [String:Any]) {

        let data = json["data"] as? String
        let day = json["day"] as? Int
      let aircraft = json["aircraft"] as? Int
        //        let helicopter =
        //        let tank =
        //        let apc =
        //        let fieldArtillery =
        //        let mrl =
        //        let militaryAuto =
        //        let fuelTank =
        //        let drone =
        //        let navalShip =
        //        let antiAircraftWarfare =
        //        let specialEquipment =
        //        let mobileSRBMSystem =
        //        let greatestLossesDirection =
        //        let cruiseMissiles =
        //        let vehiclesAndFuelTanks =

        self.data = data
       self.day = day
      self.aircraft = aircraft
//
//
}
}
