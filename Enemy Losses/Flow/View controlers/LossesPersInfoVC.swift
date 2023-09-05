//
//  LossesPersInfoVC.swift
//  Enemy Losses
//
//  Created by Quasar on 28.08.2023.
//

import UIKit

class LossesPersInfoVC: UIViewController {
    
    private var infosLP = [LossesPersonal]()
    private var url = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        
        let datePicker = UIDatePicker()
        // Set the date picker mode to date and time
        
        // Set the date picker mode to date and time
             datePicker.datePickerMode = .date

             // Add the date picker to the view
             view.addSubview(datePicker)

             // Add a target to the date picker to detect when the value changes
             datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
            // Get the selected date from the date picker
            let selectedDate = sender.date

            // Do something with the selected date
            print(selectedDate)
        }
    
    func fetchData() {
        NetworkManager.fetchData(url: url) { (infos) in
        self.infosLP = infos
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    private func configureCell(cell: LossesPersTVCell, for indexPath: IndexPath) {
        
        let info = infosLP[indexPath.row]
        cell.date.text = "Date  \(info.date)"
        cell.day.text = "Day  \(info.day)"
        cell.personnal.text = "Personnal : \(info.personnel)"
        cell.personalInfo.text = "Personal Info : \(info.personnalInfo)"
        cell.pow.text = info.pOW != nil ? "POW : \(info.pOW!)" : ""
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
extension LossesPersInfoVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infosLP.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3") as! LossesPersTVCell
    
        configureCell(cell: cell, for: indexPath)
        
        return cell
    }
}

// MARK: Table View Delegate

extension LossesPersInfoVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
}
