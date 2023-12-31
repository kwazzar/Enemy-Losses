//
//  CollectionViewController.swift
//  Enemy Losses
//
//  Created by Quasar on 25.08.2023.
//

import UIKit

 enum Actions: String, CaseIterable {
    case LossesEquipment = "russia Losses Equipment"
    case LossesEquipmentOryx = "russia Losses EquipmentOryx"
    case LossesPersonal = "russia Losses Personal"
}

private let reuseIdentifier = "Cell"


class MainCollectionVC: UICollectionViewController {
    
    private var infos = [LossesEquipment]()
    
    let actions = Actions.allCases


    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        cell.label.text = actions[indexPath.row].rawValue
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let action = actions[indexPath.row]
        
        switch action {
        case .LossesEquipment:
            performSegue(withIdentifier: "LossesEquipment", sender: self)
        case .LossesEquipmentOryx:
            performSegue(withIdentifier: "LossesEquipmentOryx", sender: self)
        case.LossesPersonal:
            performSegue(withIdentifier: "LossesPersonal", sender: self)
        }
        
        
    }

}
