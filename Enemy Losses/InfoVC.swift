//
//  InfoVC.swift
//  Enemy Losses
//
//  Created by Quasar on 26.08.2023.
//

import UIKit

class InfoVC: UIViewController {
    
    private var infos = [LossesEquipment]()
    private var url = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"

    @IBOutlet weak var tableView: UITableView!
    

        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func fetchData() {
        NetworkManager.fetchData(url: url) { (infos) in
        self.infos = infos
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
        private func configureCell(cell: TableViewCell, for indexPath: IndexPath) {

            let info = infos[indexPath.row]

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
