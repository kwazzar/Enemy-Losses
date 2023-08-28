//
//  LossesEqOryxVC.swift
//  Enemy Losses
//
//  Created by Quasar on 28.08.2023.
//

import UIKit

class LossesEqOryxInfoVC: UIViewController {
    
    private var infosLEOryx = [LossesEquipmentOryx]()
    private var url = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment_oryx.json"
    
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()

    }
    
    func fetchData() {
        NetworkManager.fetchData(url: url) { (infos) in
        self.infosLEOryx = infos
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    private func configureCell(cell: LossesEqOryxTVCell, for indexPath: IndexPath) {
        
        let info = infosLEOryx[indexPath.row]
        cell.equipmentOryx.text = "Equipment Oryx \(info.equirmentOryx)"
        cell.model.text = "Model \(info.model)"
        cell.manufacturer.text = "Manufacturer \(info.manufacturer)"
        cell.lossesTotal.text = "lossesTotal \(info.lossesTotal)"
        cell.equipmentUa.text = "Equipment Ua \(info.equipmentUa)"
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// MARK: Table View Data Source
extension LossesEqOryxInfoVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infosLEOryx.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! LossesEqOryxTVCell
    
        configureCell(cell: cell, for: indexPath)
        
        return cell
    }
}

// MARK: Table View Delegate

extension LossesEqOryxInfoVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
}
