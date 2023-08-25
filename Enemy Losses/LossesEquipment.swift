//
//  russiaLossesEquipment.swift
//  Enemy Losses
//
//  Created by Quasar on 24.08.2023.
//

import Foundation


struct LossesEquipment: Decodable {
    
    let data: String?
    let day: Int?
    let aircraft: Int?
    let helicopter: Int?
    let tank: Int?
    let apc: Int?
    let fieldArtillery: Int?
    let mrl: Int?
    let militaryAuto: Int?
    let fuelTank: Int?
    let drone: Int?
    let navalShip: Int?
    let antiAircraftWarfare: Int?
    
}

