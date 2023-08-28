//
//  LossesEqOryxTVCell.swift
//  Enemy Losses
//
//  Created by Quasar on 28.08.2023.
//

import UIKit

class LossesEqOryxTVCell: UITableViewCell {
    
    @IBOutlet weak var equipmentOryx: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var manufacturer: UILabel!
    @IBOutlet weak var lossesTotal: UILabel!
    @IBOutlet weak var equipmentUa: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
