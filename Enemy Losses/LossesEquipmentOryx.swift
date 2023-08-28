//
//  LossesEquipmentOryx.swift
//  Enemy Losses
//
//  Created by Quasar on 24.08.2023.
//

import Foundation

struct LossesEquipmentOryx: DataType {
    
    let equirmentOryx: String
    let model: String
    let manufacturer: String
    let lossesTotal: Int
    let equipmentUa: String
    
    enum CodingKeys: String, CodingKey {
        case equirmentOryx = "equipment_oryx"
        case model
        case manufacturer
        case lossesTotal = "losses_total"
        case equipmentUa = "equipment_ua"
    }
    
    init(json: [String: Any]) {
        let equirmentOryx = json["equipment_oryx"] as! String
        let model = json["model"] as! String
        let manufacturer = json["manufacturer"] as! String
        let lossesTotal = json["losses_total"] as! Int
        let equipmentUa = json["equipment_ua"] as! String
        
        self.equirmentOryx = equirmentOryx
        self.model = model
        self.manufacturer = manufacturer
        self.lossesTotal = lossesTotal
        self.equipmentUa = equipmentUa
    }
}

