//
//  LossesPersonal.swift
//  Enemy Losses
//
//  Created by Quasar on 24.08.2023.
//

import Foundation

struct LossesPersonal: DataType {
    
    
    var date: String
    let day: Int
    let personnal: Int
    let personnalInfo: String
    let pOW: Int?
    
    enum CodingKeys: String, CodingKey {
        case date
        case day
        case personnal
        case personnalInfo = "personnel*"
        case pOW = "POW"
        
    }
    
    init?(json: [String: Any]) {
        let date = json["date"] as! String
        let day = json["day"] as! Int
        let personnal = json["personnal"] as! Int
        let personnalInfo = json["personnel*"] as! String
        let pOW = json["POW"] as? Int
        
        self.date = date
        self.day = day
        self.personnal = personnal
        self.personnalInfo = personnalInfo
        self.pOW = pOW
    }
}
