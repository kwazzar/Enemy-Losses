//
//  LossesPersTVCell.swift
//  Enemy Losses
//
//  Created by Quasar on 28.08.2023.
//

import UIKit

class LossesPersTVCell: UITableViewCell {
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var personnal: UILabel!
    @IBOutlet weak var personalInfo: UILabel!
    @IBOutlet weak var pow: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
