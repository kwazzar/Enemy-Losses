//
//  TableViewCell.swift
//  Enemy Losses
//
//  Created by Quasar on 27.08.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var aircraft: UILabel!
    @IBOutlet weak var helicopter: UILabel!
    @IBOutlet weak var tank: UILabel!
    @IBOutlet weak var apc: UILabel!
    @IBOutlet weak var fieldArlilery: UILabel!
    @IBOutlet weak var mrl: UILabel!
    @IBOutlet weak var militaryAuto: UILabel!
    @IBOutlet weak var fuelTank: UILabel!
    @IBOutlet weak var drone: UILabel!
    @IBOutlet weak var navalShip: UILabel!
    @IBOutlet weak var antiAircraftWarfare: UILabel!
    @IBOutlet weak var specialEquipment: UILabel!
    @IBOutlet weak var mobileSRBMSystem: UILabel!
    @IBOutlet weak var greatestLossesDirection: UILabel!
    @IBOutlet weak var vehiclesAndFuelTanks: UILabel!
    @IBOutlet weak var cruiseMisslies: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
