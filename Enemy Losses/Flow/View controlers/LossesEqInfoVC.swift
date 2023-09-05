//
//  InfoVC.swift
//  Enemy Losses
//
//  Created by Quasar on 26.08.2023.
//

import UIKit

class LossesEqInfoVC: UIViewController {
    
    private var infosLE = [LossesEquipment]()
    private var url = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    func fetchData() {
        NetworkManager.fetchData(url: url) { (infos) in
        self.infosLE = infos
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    

    
    
        private func configureCell(cell: LossesEqTVCell, for indexPath: IndexPath) {

            let info = infosLE[indexPath.row]
            cell.date.text = "Date \(info.date)"
           
            cell.day.text = "Day \(String(info.day))"
            cell.aircraft.text = "Aircraft : \(String(info.aircraft))"
            cell.helicopter.text = "Helicopter : \(String(info.helicopter))"
            cell.tank.text = "Tank : \(String(info.tank))"
            cell.apc.text = "APC : \(String(info.aPC))"
            cell.fieldArlilery.text = "Field Arlilery \(String(info.fieldArtillery))"
            cell.mrl.text = "MRL : \(String(info.mRL))"
            cell.militaryAuto.text = info.militaryAuto != nil ? "MilitaryAuto : \(String(info.militaryAuto!))" : ""
            cell.fuelTank.text = info.fuelTank != nil ? "Fuel Tank : \(String(info.fuelTank!))" : ""
            cell.drone.text = "Drone : \(String(info.drone))"
            cell.navalShip.text = "Naval Ship : \(String(info.navalShip))"
            cell.antiAircraftWarfare.text = "Anti-Aircraft Warfare : \(String(info.antiAircraftWarfare))"
            cell.specialEquipment.text = info.specialEquipment != nil ? "Special Equipment : \(String(info.specialEquipment!))" : ""
            cell.mobileSRBMSystem.text = info.mobileSRBMSystem != nil ? "Mobile SRBM System : \(String(info.mobileSRBMSystem!))" : ""
            cell.greatestLossesDirection.text = info.greatestLossesDirection != nil ? "greatest Losses Direction : \(info.greatestLossesDirection!)" : ""
            cell.vehiclesAndFuelTanks.text = info.vehiclesAndFuelTanks != nil ? "Vehicles and Fuel Tanks : \(String(info.vehiclesAndFuelTanks!))" : ""
            cell.cruiseMisslies.text = info.cruiseMissiles != nil ? "Cruise Missiles : \(String(info.cruiseMissiles!))" : ""
        }


    // MARK: - Navigation

 

}

// MARK: Table View Data Source
extension LossesEqInfoVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infosLE.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! LossesEqTVCell
    
        configureCell(cell: cell, for: indexPath)
        
           // cell.sizeToFit()
        
        return cell
    }
}

// MARK: Table View Delegate

extension LossesEqInfoVC: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 370

    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let info = infos[indexPath.row]
//    }
}
